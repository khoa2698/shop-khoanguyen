<?php
namespace App\Helpers;

use Illuminate\Support\Str;
class Helper
{
    // Lấy danh sách chuyên mục
    public static function menu($menus, $parent_id = 0, $char ='')
    {  
        $html = '';
        foreach ($menus as $key => $menu) {
            if ($menu->parent_id == $parent_id)
            {
                $html .= '
                    <tr>
                        <td>'. $menu->id .'</td>
                        <td>'. $char . $menu->name .'</td>
                        <td>'. self::active($menu->active) .'</td>
                        <td>'. $menu->updated_at .'</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="/admin/menu/edit/'.$menu->id.'"><i class="fas fa-edit"></i></a>
                            <a class="btn btn-danger btn-sm" href="#" onclick="removeRow('.$menu->id.', \'/admin/menu/destroy\')"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                ';

                unset($menus[$key]);

                $html .= self::menu($menus, $menu->id, $char .'--');
            }

        }
        return $html;
    }

    public static function active($active = 0)
    {
        return $active == 0 ? '<span class="btn btn-outline-danger btn-xs">NO</span>' : '<span class="btn btn-outline-info btn-xs">YES</span>';
    }

    public static function menus($menus, $parent_id = 0) : string 
    {
        $html = '';
        foreach ($menus as $key => $menu) {
            if ($menu->parent_id == $parent_id) {
                $html .= '
                <li>
                    <a href="/danh-muc/'. $menu->id .'-'. Str::slug($menu->name, '-') .'.html"> 
                        ' .$menu->name. '
                    </a>';
                if (self::isChild($menus, $menu->id)) {
                    
                    $html .= '<ul class="sub-menu">';
                    $html .= self::menus($menus, $menu->id);
                    $html .= '</ul>';
                }
                $html .= '</li>';
            }
        }
        return $html;
    }

    public static function menus_mobile($menus, $parent_id = 0) : string 
    {
        $html = '';
        foreach ($menus as $key => $menu) {
            if ($menu->parent_id == $parent_id) {
                $html .= '
                <li>
                    <a href="/danh-muc/'. $menu->id .'-'. Str::slug($menu->name, '-') .'.html"> 
                        ' .$menu->name. '
                    </a>';
                if (self::isChild($menus, $menu->id)) {
                    
                    $html .= '<ul class="sub-menu-m">';
                    $html .= self::menus($menus, $menu->id);
                    $html .= '</ul>  
                    <span class="arrow-main-menu-m">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </span>';
                }
                $html .= '</li>';
            }
        }
        return $html;
    }

    public static function isChild($menus, $id) : bool
    {
        foreach ($menus as $key => $menu) {
            if ($menu->parent_id == $id) {
                return true;
            }
        }
        return false;
    }

    public static function price($price = 0, $price_sale = 0)
    {
        if ($price_sale != 0) return number_format($price - $price_sale);
        if ($price != 0) return number_format($price);
        return '<a href="/lien-he.html">Liên Hệ</a>';
    }
}