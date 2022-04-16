@extends('admin.main')


@section('content')
<form action="" method="POST" enctype="multipart/form-data" id="formAddProduct">
    @csrf
    <div class="card-body">

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="slider_name">Tiêu đề</label>
                    <input type="text" value="{{ old('slider_name') }}" class="form-control" name="slider_name" id="slider_name">
                </div>
            </div> 
            <div class="col-sm-6">
                <!-- select -->
                <div class="form-group">
                  <label for="url">Đường dẫn</label>
                  <input type="text" value="{{ old('url') }}" class="form-control" name="url" id="url">
                </div>
              </div>
        </div>

        <div class="form-group">
            <label for="thumb">Ảnh sản phẩm</label>
            <input type="file" class="form-control" id="thumb">
            <div id="image_show" class="mt-3">

            </div>
            <input type="hidden" name="thumb" id="file_link">

        </div>

        <div class="form-group">
            <label for="sort_by">Sắp xếp</label>
            <input type="number" value="1" class="form-control" name="sort_by" id="sort_by">
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

