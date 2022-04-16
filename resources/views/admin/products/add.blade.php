@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <form action="{{route("add_product")}}" method="POST" enctype="multipart/form-data" id="formAddProduct">
        @csrf
        <div class="card-body">

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="product_name">Tên sản phẩm</label>
                        <input type="text" value="{{ old('product_name') }}" class="form-control" name="product_name" id="product_name" placeholder="Nhập tên danh mục...">
                    </div>
                </div>  
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="parent_category_id">Thuộc danh mục</label>
                        <select class="form-control" name="parent_category_id" id="parent_category_id">
                            @foreach ($menus as $item)
                                <option value="{{$item->id}}">{{$item->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                  <!-- select -->
                  <div class="form-group">
                    <label for="price">Giá gốc</label>
                    <input type="number" value="{{ old('price') }}" class="form-control" name="price" id="price">
                  </div>
                </div>
                <div class="col-sm-6">
                  <!-- select -->
                  <div class="form-group">
                    <label for="price_sale">Giá giảm</label>
                    <input type="number" value="{{ old('price_sale') }}" class="form-control" name="price_sale" id="price_sale">
                  </div>
                </div>
              </div>

            <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea class="form-control" name="description" id="description">{{ old('description') }}</textarea>
            </div>

            <div class="form-group">
                <label for="content">Mô tả chi tiết</label>
                <textarea class="form-control" name="content" id="content">{{ old('content') }}</textarea>
            </div>

            <div class="form-group">
                <label for="thumb">Ảnh sản phẩm</label>
                <input type="file" class="form-control" id="thumb">
                <div id="image_show" class="mt-3">

                </div>
                <input type="hidden" name="thumb" id="file_link">

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
            <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
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