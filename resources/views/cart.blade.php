<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart"></div>

    <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">
                Your Cart
            </span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                <i class="zmdi zmdi-close"></i>
            </div>
        </div>
        
        <div class="header-cart-content flex-w js-pscroll">
            @php
                $cart = Session::get('carts');
                $priceTotal = 0;
            @endphp
            @if (count($products) > 0)
                <ul class="header-cart-wrapitem w-full">
                    @foreach ($products as $product)
                        @php
                            $priceOfOne = ($product->price!=0 || $product->price_sale!=0) ? ($product->price - $product->price_sale) : '';
                            $priceOfN = $priceOfOne * $cart[$product->id];
                            $priceTotal += $priceOfN;
                        @endphp
                        <li class="header-cart-item flex-w flex-t m-b-12">
                            <div class="header-cart-item-img">
                                <img src="{{ $product->thumb }}" alt="IMG">
                            </div>
        
                            <div class="header-cart-item-txt p-t-8">
                                <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                                    {{ $product->product_name }}
                                </a>
        
                                <span class="header-cart-item-info">
                                    {{ $cart[$product->id] }} x {{ number_format($priceOfOne) . ' VND' }}
                                </span>
                            </div>
                        </li>
                    @endforeach
                </ul>
                
                <div class="w-full">
                    <div class="header-cart-total w-full p-tb-40">
                        Total: {{ number_format($priceTotal) . ' VND'}}
                    </div>

                    <div class="header-cart-buttons flex-w w-full">
                        <a href="/carts" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                            View Cart
                        </a>

                        <a href="/carts" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
                            Check Out
                        </a>
                    </div>
                </div>
            @else
                <div>
                    <img src="/templates/images/images-cart-empty.png" alt="">
                </div>
            @endif
        </div>
    </div>
</div>