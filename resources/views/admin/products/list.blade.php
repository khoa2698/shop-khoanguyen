@extends('admin.main')

{{-- @section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection --}}
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th width='5%'>ID</th>
                <th>Tên sản phẩm</th>
                <th>Danh mục</th>
                <th>Giá gốc</th>
                <th>Giá khuyến mãi</th>
                <th>Active</th>
                <th>Update</th>
                <th width='10%'>&nbsp;</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($productList as $product)
                <tr>
                    <td>{{ $product->id }}</td>
                    <td>{{ $product->product_name }}</td>
                    <td>{{ $product->menu->name }}</td>
                    <td>{{ $product->price }}</td>
                    <td>{{ $product->price_sale }}</td>
                    <td>{!! \App\Helpers\Helper::active($product->active) !!}</td>
                    <td>{{ $product->updated_at }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="/admin/product/edit/{{ $product->id }}"><i class="fas fa-edit"></i></a>
                        <a class="btn btn-danger btn-sm" href="#" onclick="removeRow({{ $product->id }}, '/admin/product/destroy')"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {!! $productList->links() !!}
    {{-- {{ $productList }} --}}
@endsection
