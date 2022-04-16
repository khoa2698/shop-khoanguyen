<?php

namespace App\Http\Controllers;

use App\Http\Services\Menu\MenuService;
use Illuminate\Http\Request;
use App\Http\Services\Product\ProductService;
use App\Models\Product;

class MainController extends Controller
{
    protected $menu;
    protected $product;
    public function __construct(MenuService $menu, ProductService $product)
    {
        $this->menu = $menu;
        $this->product = $product;

    }
    public function index()
    {
        return view('home', [
            'title' => 'Shop Thời Trang',
            'menu_banners' => $this->menu->show(),
            'products' =>$this->product->get(),
        ]); 
    }

    public function loadProduct(Request $request)
    {
        $page = $request->input('page');
        $result = $this->product->get($page);
        if (count($result) != 0) {
            $html = view('products.list', ['products' => $result])->render();
            return response()->json(['html' => $html]);
        }

        return response()->json(['html' => '']);
    }
}
