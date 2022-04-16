<?php

namespace App\Http\Services;

class UploadService
{
    public function store($request)
    {
        if ($request->hasFile('thumb')) {
            
            try {
                $file = $request->file('thumb');
                $name = $file->getClientOriginalName();

                $pathFull = 'images/' . date("Y/m/d");
                $request->file('thumb')->storeAs(
                    'public/' . $pathFull, $name
                );

                return '/storage/' . $pathFull . '/' . $name;
            } catch (\Exception $error) {
                return false;
            }
            
        }
    }
}
