<?php

namespace App\Http\Services\Product;

use App\Models\Menu;
use App\Models\Product;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Log;

class ProductAdminService
{
    public function getMenu()
    {
        return Menu::where('active', 1)->get();
    }

    public function isValidPrice($request)
    {
        $historical_cost = $request->input('price');
        $discount = $request->input('price_sale');
        if ($historical_cost != 0 && $discount && $discount >= $historical_cost) 
        {
            Session::flash('error', 'Giá giảm phải nhỏ hơn giá gốc');
            return false;
        }
        if ($historical_cost == 0 && $discount != 0) {
            Session::flash('error', 'Vui lòng nhập giá gốc');
            return false;
        }

        return true;
    }

    public function insert($request)
    {
        $isValidPrice = $this->isValidPrice($request);
        if ($isValidPrice === false) return false;

        // dd($request->all());

        try {
            $request->except('_token');
            // dd($request->all());

            Product::create($request->all());

            Session::flash('success', 'Thêm sản phẩm thành công');

        } catch(\Exception $err) {
            Session::flash('error', 'Thêm sản phẩm thất bại');
            Log::info($err->getMessage());
            return false;
        }

        return true;
    }

    public function get()
    {
        return Product::with('menu')->orderByDesc('id')->paginate(15);
    }

    public function update($request, $product)
    {
        $isValidPrice = $this->isValidPrice($request);
        if ($isValidPrice === false) return false;

        try {
            $product->fill($request->input());
            $product->save();
            Session::flash('success', 'Cập nhật sản phẩm thành công');
        } catch (\Exception $err) {
            Session::flash('error', 'Cập nhật sản phẩm thất bại');
            Log::info($err->getMessage());
            return false;
        }

        return true;
    }

    // Xóa sản phẩm
    public function destroy($request)
    {
        $id = $request->id;
        $product = Product::where('id', $id)->first();
        
        if($product) {
            return Product::where('id', $id)->delete();
        }

        return false;
    }
}
