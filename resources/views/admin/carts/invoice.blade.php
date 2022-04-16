@extends('admin.main')

@section('content')
    <div class="customer mt-3">
        <ul>
            <li>Tên khách hàng: <strong>{{ $customer->name }}</strong></li>
            <li>Số điện thoại: <strong>{{ $customer->phone }}</strong></li>
            <li>Địa chỉ: <strong>{{ $customer->address }}</strong></li>
            <li>Email: <strong>{{ $customer->email }}</strong></li>
            <li>Ghi chú: <strong>{{ $customer->content }}</strong></li>
        </ul>
    </div>

    <div class="cart">
        @php
            $priceTotal = 0;
        @endphp
        <table class="table">
            <tbody>
                <tr class="table_head">
                    <th class="column-1">IMG</th>
                    <th class="column-2">Tên sản phẩm</th>
                    <th class="column-3">Số lượng</th>
                    <th class="column-4">Giá/1 sản phẩm</th>
                    <th class="column-5">Tổng</th>
                </tr>

                @foreach ($carts as $cart)
                @php
                    $priceOfOne = $cart->price;
                    $priceOfN = $cart->price * $cart->quantity;
                    $priceTotal += $priceOfN;
                @endphp
                    <tr class="table_row">
                        <td class="column-1">
                            <div class="how-itemcart1">
                                <img style="width: 100px" src="{{ $cart->product->thumb }}" alt="IMG">
                            </div>
                        </td>
                        <td class="column-2">{{ $cart->product->product_name }}</td>
                        <td class="column-4">{{ $cart->quantity }}</td>
                        <td class="column-3">
                            {{ number_format($priceOfOne) . ' VND' }}
                        </td>
                        <td class="column-5">
                            {{ number_format($priceOfN) .' VND' }}
                        </td>
                    </tr>
                @endforeach
                    <tr>
                        <td colspan="4" class="text-right">Thành tiền:</td>
                        <td>
                            <div class="bg-info text-center text-light">
                                {{ number_format($priceTotal) .' VND' }}
                            </div>
                        </td>
                    </tr>
            </tbody>
        </table>
    </div>
@endsection
