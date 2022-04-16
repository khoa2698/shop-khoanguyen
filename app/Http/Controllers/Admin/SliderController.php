<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Slider\SliderService;
use App\Models\Slider;

class SliderController extends Controller
{
    protected $slider;
    public function __construct(SliderService $slider)
    {
        $this->slider = $slider;
    }

    public function create()
    {
        return view('admin.sliders.add', [
            'title' => 'Thêm Slider mới',
            ]);
    }

    public function store(Request $request)
    {
        $this->validate($request,
                [
                    'slider_name' => ['required'],
                    'thumb' => ['required'],
                    'url' => ['required']
                ],
                [
                    'slider_name.required' => 'Tên slider là bắt buộc',
                    'thumb.required' => 'Hình ảnh là bắt buộc',
                    'url.required' => 'Đường dẫn là bắt buộc'
                ],
                [
                    // customAttribute
                ]
        );
        
        $this->slider->insert($request);

        return redirect()->back();
    }

    public function index()
    {
        return view('admin.sliders.list',
            [
                'title' => 'Danh sách slider',
                'sliders' => $this->slider->get(),
            ]);
    }

    public function show(Slider $slider)
    {
        return view('admin.sliders.edit', [
            'title' => 'Chỉnh sửa Slider',
            'slider' => $slider,
        ]);
    }

    public function update(Request $request, Slider $slider)
    {
        $this->validate($request,
                [
                    'slider_name' => ['required'],
                    'thumb' => ['required'],
                    'url' => ['required']
                ],
                [
                    'slider_name.required' => 'Tên slider là bắt buộc',
                    'thumb.required' => 'Hình ảnh là bắt buộc',
                    'url.required' => 'Đường dẫn là bắt buộc'
                ],
                [
                    // customAttribute
                ]
        );
        $result = $this->slider->update($request, $slider);
        if ($result) {
            return redirect('/admin/sliders/list');
        }
        return redirect()->back();
    }

    public function destroy(Request $request)
    {
        $result = $this->slider->destroy($request);
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
