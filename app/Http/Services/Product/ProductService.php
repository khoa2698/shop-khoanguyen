<?php

namespace App\Http\Services\Product;

use App\Models\Product;

class ProductService
{
    const LIMIT = 16;

    public function get($page = null)
    {
        return Product::select('id', 'product_name', 'price', 'price_sale', 'thumb')
        ->where('active', 1)
        ->orderByDesc('id')
        ->when($page != null, function($query) use ($page){
            $query->offset($page * self::LIMIT);
        })
        ->limit(self::LIMIT)
        ->get();
    }

    public function getProduct($id)
    {
        return Product::where('id', $id)
        ->where('active', 1)
        ->with('menu')
        ->firstOrFail();
    }
    
    public function getRelatedProduct($id)
    {
        return Product::where('id', '!=', $id)
        ->where('active', 1)
        ->orderByDesc('id')
        ->limit(8)
        ->get();
    }
}
