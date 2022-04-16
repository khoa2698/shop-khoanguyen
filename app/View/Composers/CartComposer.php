<?php

namespace App\View\Composers;
use Illuminate\View\View;
use App\Models\Product;
use Illuminate\Support\Facades\Session;

class CartComposer
{
    public function compose(View $view)
    {
        $carts = Session::get('carts');
        if (is_null($carts)) {
            $products = [];
        } else {
            $productId = array_keys($carts);
            $products = Product::select('id', 'product_name', 'price', 'price_sale', 'thumb')
                    ->where('active', 1)
                    ->whereIn('id', $productId)
                    ->get();
        }
        $view->with('products', $products);
    }
}
