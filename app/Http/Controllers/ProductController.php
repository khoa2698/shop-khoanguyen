<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Product\ProductService;

class ProductController extends Controller
{
    //
    protected $productService;
    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }
    public function index($id = '', $slug='')
    {
        $product = $this->productService->getProduct($id);
        $relatedProducts = $this->productService->getRelatedProduct($id);
        return view('products.productdetail',[
            'title' => $product->product_name,
            'product' => $product,
            'relatedProducts' => $relatedProducts,
        ]);
    }
}
