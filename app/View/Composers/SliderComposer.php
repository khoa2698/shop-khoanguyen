<?php

namespace App\View\Composers;
use App\Models\Slider;
use Illuminate\View\View;
class SliderComposer
{
    public function compose(View $view)
    {
        $slides = Slider::where('active', 1)->orderByDesc('sort_by')->get();
        $view->with('slides', $slides);
    }
}
