<?php

namespace App\Http\Services;

use App\Jobs\SendMail;
use App\Models\Cart;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class CartService
{
    public function create($request)
    {
        $quantity = $request->input('num_product');
        $product_id = $request->input('product_id');
        if ($quantity <= 0 || $product_id <= 0) {
            Session::flash('error', 'Số lượng hoặc sản phẩm không chính xác');
            return false;
        }

        // Session::forget('carts');

        $carts = Session::get('carts');

        // Nếu chưa tồn tại giỏ hàng
        if (is_null($carts)) {
            Session::put('carts', [
                $product_id => $quantity
            ]);
            return true;
        } 
        
        // Nếu tồn tại sản phẩm trong giỏ hàng
        $exist = Arr::exists($carts, $product_id);
        if ($exist) {
            $carts[$product_id] = $carts[$product_id] + $quantity;
            Session::put('carts', $carts);

            return true;
        }
        // Nếu tồn tại giỏ hàng nhưng chưa có sản phẩm đó
        $carts[$product_id] = $quantity;
        Session::put('carts', $carts);

        return true;
    }

    public function getProduct()
    {
        $carts = Session::get('carts');
        if (is_null($carts)) return [];
        $productId = array_keys($carts);
        return Product::select('id', 'product_name', 'price', 'price_sale', 'thumb')
                ->where('active', 1)
                ->whereIn('id', $productId)
                ->get();
    }

    public function update($request)
    {
        Session::put('carts', $request->input('num_product'));
        return true;
    }

    public function remove($id)
    {
        $carts = Session::get('carts');
        // xóa sản phẩm khỏi giỏ hàng
        unset($carts[$id]);
        // cập nhật lại giỏ hàng
        Session::put('carts', $carts);
        return true;
    }

    public function addCart($request)
    {
        try {
            DB::beginTransaction();
            $carts = Session::get('carts');
            if (is_null($carts)) return false;

            $customer = Customer::create([
                'name' => $request->name,
                'phone' => $request->phone,
                'email' => $request->email,
                'address' => $request->address,
                'content' => $request->content
            ]);

           $this->infoProductCart($carts, $customer);

           DB::commit();
           Session::flash('success', 'Đặt hàng thành công');

           # Queue
           SendMail::dispatch($request->email)->delay(now()->addSeconds(2));

           Session::forget('carts');
        } catch (\Exception $err) {
            DB::rollBack();
           Session::flash('error', 'Đặt hàng bị lỗi, Vui lòng thử lại');
            return false;
        }

        return true;
    }

    protected function infoProductCart($carts, $customer_id)
    {
        $productId = array_keys($carts);
        $products = Product::select('id', 'product_name', 'price', 'price_sale', 'thumb')
                ->where('active', 1)
                ->whereIn('id', $productId)
                ->get();
        
        $data = [];
        foreach ($products as $product) {
            $data[] = [
                'customer_id' => $customer_id->id,
                'product_id' => $product->id,
                'quantity' => $carts[$product->id],
                'price' => ($product->price!=0 || $product->price_sale!=0) ? ($product->price - $product->price_sale) : 0,
            ];
        }

        return Cart::insert($data);
    }

    public function getCustomer()
    {
        return Customer::orderByDesc('id')->paginate(15);
    }

    public function getProductForCart($customer)
    {
        return $customer->cart()->with(['product' => function($query){
            $query->select('id', 'thumb', 'product_name');
        }])->get();
    }
}
