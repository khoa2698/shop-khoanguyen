@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th width='5%'>Id</th>
                <th>Name</th>
                <th>Active</th>
                <th>Update</th>
                <th width='10%'>&nbsp;</th>
            </tr>
        </thead>

        <tbody>
            {!! \App\Helpers\Helper::menu($menus) !!}
        </tbody>
    </table>
@endsection
