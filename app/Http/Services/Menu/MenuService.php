<?php
namespace App\Http\Services\Menu;

use App\Models\Menu;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;

class MenuService
{
    public function create($request)
    {
        try {
            Menu::create([
                'name' => $request->category_name,
                'parent_id' => $request->parent_category,
                'description' => $request->description,
                'content' => $request->content,
                // 'slug' => Str::slug($request->category_name, '-'),
                'active' => $request->active,
            ]);
          
            Session::flash('success', 'Tạo danh mục thành công');
        }
        catch(\Exception $err) {
            Session::flash('error', $err->getMessage());
            return false;
        }
        return true;
    }

    // Lấy ra danh mục cha
    public function getParent()
    {
        return Menu::Where('parent_id', 0)->get();
    }

    // Lấy tất cả danh mục
    public function getAll()
    {
        return Menu::orderbyDesc('id')->paginate(10);
    }

    // Xóa danh mục
    public function destroy($request)
    {
        $id = $request->id;
        $menu = Menu::where('id', $id)->first();
        
        if($menu) {
            return Menu::where('id', $id)->orWhere('parent_id', $id)->delete();
        }

        return false;
    }

    // Cập nhật danh mục
    public function update($request, $menu)
    {
        //$menu->fill($request->input());
        
        if($request->parent_category != $menu->id) {
            $menu->parent_id = $request->parent_category;
        }

        $menu->name = $request->category_name;
        $menu->description = $request->description;
        $menu->content = $request->content;
        $menu->active = $request->active;
        $menu->save();

        Session::flash('success', 'Cập nhật danh mục thành công');
    }

    public function show()
    {
        return Menu::where('parent_id', 0)
        ->select('id', 'name')
        ->orderbyDesc('id')
        ->get();

    }

    public function getID($id)
    {
        return Menu::where('id', $id)->where('active', 1)->firstOrFail();
    }
    public function getProduct($menu, $request)
    {
        $query = $menu->products()
        ->select('id', 'product_name', 'thumb', 'price', 'price_sale')
        ->where('active', 1);
        if ($request->input('price')) {
            $query->orderBy('price', $request->input('price'));
        }
        return $query->orderByDesc('id')
        ->paginate(12)->withQueryString();
    }
}