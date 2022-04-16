@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <form action="" method="POST">
        @csrf
        <div class="card-body">
            <div class="form-group">
            <label for="category_name">Tên danh mục</label>
            <input type="text" class="form-control" name="category_name" id="category_name" placeholder="Nhập tên danh mục...">
            </div>
        
            <div class="form-group">
            <label for="parent_category">Danh mục cha</label>
            <select class="form-control" name="parent_category" id="parent_category">
                <option value="0">Danh mục cha</option>
                @foreach ($menus as $item)
                    <option value="{{$item->id}}">{{$item->name}}</option>
                @endforeach
            </select>
            </div>
        
            <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea class="form-control" name="description" id="description"></textarea>
            </div>

            <div class="form-group">
                <label for="content">Mô tả chi tiết</label>
                <textarea class="form-control" name="content" id="content"></textarea>
            </div>

            <div class="form-group">
                <label>Trạng thái</label>
                <div class="custom-control custom-radio">
                <input class="custom-control-input" value="1" type="radio" id="active" name="active" checked="">
                <label for="active" class="custom-control-label">Hiện</label>
                </div>
                <div class="custom-control custom-radio">
                <input class="custom-control-input" value="0" type="radio" id="hidden" name="active">
                <label for="hidden" class="custom-control-label">Ẩn</label>
                </div>
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Tạo danh mục</button>
        </div>
    </form>
@endsection

@section('footer')
    <script>
        // Replace the <textarea id="editor1"> with a CKEditor 4
        // instance, using default configuration.
        CKEDITOR.replace( 'content' );
    </script>
@endsection