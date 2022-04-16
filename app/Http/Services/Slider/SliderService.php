<?php

namespace App\Http\Services\Slider;

use App\Models\Slider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class SliderService
{
    public function insert($request)
    {
        try {
            Slider::create($request->input());
            Session::flash('success', "Thêm Slider Thành Công");
        } catch (\Exception $err) {
            Session::flash('error', "Thêm Slider Thất Bại");
            Log::info($err->getMessage());

            return false;
        }

        return true;
    }

    public function get()
    {
        return Slider::orderByDesc('id')->paginate(10);
    }

    public function update($request, $slider)
    {
        try {
            $slider->fill($request->input());
            $slider->save();
            Session::flash('success', 'Cập nhật slider thành công');
        } catch (\Exception $err) {
            Session::flash('error', 'Cập nhật slider thất bại');
            Log::info($err->getMessage());
            return false;
        }

        return true;
    }

    public function destroy($request)
    {
        $id = $request->id;
        $slider = Slider::where('id', $id)->first();
        
        if($slider) {
            $path = str_replace('storage', 'public', $slider->thumb);
            Storage::delete($path);
            return Slider::where('id', $id)->delete();
        }

        return false;
    }
}