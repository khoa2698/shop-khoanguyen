<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Menu\CreateFormRequest;
use App\Http\Services\Menu\MenuService;
use App\Models\Menu;

class MenuController extends Controller
{
    //
    protected $menuService;
    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    public function create()
    {
        return view('admin.menu.add',
            [
                'title' => 'Thêm danh mục mới',
                'menus' => $this->menuService->getParent(),
            ]
        );
    }

    public function store(CreateFormRequest $request)
    {
        $result = $this->menuService->create($request);
        return redirect()->back();
    }

    public function show(Menu $menu)
    {
        return view('admin.menu.edit',
            [
                'title' => 'Chỉnh sửa danh mục: ' . $menu->name,
                'menus' => $this->menuService->getParent(),
                'menu' => $menu,
            ]
        );
    }

    public function update(Menu $menu, CreateFormRequest $request)
    {
        $this->menuService->update($request, $menu);
        return redirect(route('list_cate'));
    }
    

    public function index()
    {
        return view('admin.menu.list',
        [
            'title' => 'Danh sách danh mục mới nhất',
            'menus' => $this->menuService->getAll(),
        ]
    );
    }

    public function destroy(Request $request)
    {
        $result = $this->menuService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công',
            ]);
        }

        return response()->json([
            'error' => true,
        ]);
    }
}
