@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th width='5%'>ID</th>
                <th>Tiêu đề</th>
                <th>Link</th>
                <th>Ảnh</th>
                <th>Trạng thái</th>
                <th>Cập nhật</th>
                <th width='10%'>&nbsp;</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($sliders as $slider)
                <tr>
                    <td>{{ $slider->id }}</td>
                    <td>{{ $slider->slider_name }}</td>
                    <td>{{ $slider->url }}</td>
                    <td>
                        <a href="{{ $slider->thumb }}" target="_blank">
                            <img src="{{ $slider->thumb }}" width="200px" alt="">
                        </a>
                    </td>
                    <td>{!! \App\Helpers\Helper::active($slider->active) !!}</td>
                    <td>{{ $slider->updated_at }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="/admin/sliders/edit/{{ $slider->id }}"><i class="fas fa-edit"></i></a>
                        <a class="btn btn-danger btn-sm" href="#" onclick="removeRow({{ $slider->id }}, '/admin/sliders/destroy')"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {!! $sliders->links() !!}
@endsection
