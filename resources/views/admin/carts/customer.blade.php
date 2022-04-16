@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th width='5%'>ID</th>
                <th>Tên khách hàng</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Ngày đặt hàng</th>
                <th width='10%'>&nbsp;</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($customers as $customer)
                <tr>
                    <td>{{ $customer->id }}</td>
                    <td>{{ $customer->name }}</td>
                    <td>{{ $customer->phone }}</td>
                    <td>{{ $customer->email }}</td>
                    <td>{{ $customer->created_at }}</td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="/admin/customers/view/{{ $customer->id }}"><i class="fas fa-eye"></i></a>
                        <a class="btn btn-danger btn-sm" href="#" onclick="removeRow({{ $customer->id }}, '/admin/customers/destroy')"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {!! $customers->links() !!}
    {{-- {{ $customerList }} --}}
@endsection
