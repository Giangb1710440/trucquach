@extends('layout.master')
@section('title', 'Mua hàng')
@section('content')
    <!-- Shopping Cart Section Begin -->
    <section class="checkout-section spad">
        <div class="container">
            <form action="{{ route('postCheckout') }}" class="checkout-form" method="post">
                @csrf

                <div class="row">
                    @if(Auth::check())
                        <div class="col-lg-6">
                            <div class="checkout-content">

                            </div>
                            <h4>Chi tiết thanh toán</h4>
                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="fir">Họ và tên<span>*</span></label>
                                    <input type="text" id="fullname" name="fullname" value="{{ Auth::user()->name }}" >
                                </div>

                                <div class="col-lg-6">
                                    <label for="email">Địa chỉ Email<span>*</span></label>
                                    <input type="text" id="email" name="email" value="{{ Auth::user()->email }}" >
                                </div>

                                <div class="col-lg-6">
                                    <label for="phone">Số điện thoại<span>*</span></label>
                                    <input type="text" id="phone" name="phone" value="{{ Auth::user()->phone }}" >
                                </div>

                                <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">

                                <div class="col-lg-12">
                                    <label for="street">Địa chỉ<span>*</span></label>
                                    <input type="text" id="address" name="address" class="street-first" value="{{ Auth::user()->address }}">
                                </div>

                            </div>
                        </div>
                    @else
                        <div class="col-lg-6">
                            <div class="checkout-content">

                            </div>
                            <h4>Chi tiết thanh toán</h4>
                            <div class="row">
                                <div class="col-lg-6">
                                    <label for="fir">Họ và tên<span>*</span></label>
                                    <input type="text" id="fullname" name="name" value="">
                                </div>

                                <div class="col-lg-6">
                                    <label for="email">Địa chỉ Email<span>*</span></label>
                                    <input type="text" id="email" name="email" value="">
                                </div>

                                <div class="col-lg-6">
                                    <label for="phone">Số điện thoại<span>*</span></label>
                                    <input type="text" id="phone" name="phone" value="">
                                </div>

                                <div class="col-lg-12">
                                    <label for="street">Địa chỉ<span>*</span></label>
                                    <input type="text" id="address" name="address" class="street-first" value="">
                                </div>

                                <input type="hidden" name="user_id" value="-1">

                                <div class="col-lg-12">
                                    <div class="create-item">
                                        <label for="acc-create">
                                            Tạo một tài khoản ?
                                            <input type="checkbox" id="acc-create">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif

                    <div class="col-lg-6">
                        <div class="checkout-content">

                        </div>
                        @if(Session::has('cart'))
                            <div class="place-order">
                            <h4>Giỏ hàng</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>Sản phẩm <span>Tổng số tiền</span></li>
                                    @foreach($product_cart as $product)
                                        <li class="fw-normal">
                                            {{ $product['item']['name_product'] }}  x {{ $product['qty'] }}
                                            <span>{{ number_format($product['item']['unit_price'] * $product['qty']) }} đ</span></li>
                                    @endforeach
                                    <li class="total-price">Tổng thanh toán <span>{{ number_format($totalPrice) }} đ</span></li>
                                    <input type="hidden" name="total" value="{{ $totalPrice }}">
                                </ul>
                                <div class="payment-check">
                                    <div class="pc-item">
                                        <label for="pc-paypal">
                                            Thanh toán
                                            <input type="checkbox" id="pc-paypal">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="order-btn">
                                    {{-- <button type="submit" class="site-btn place-btn">Đặt hàng</button> --}}
                                    <button type="submit" class="site-btn place-btn" id="checkThanhToan">THANH TOÁN THÔNG QUA VNPAY</button>
                                </div>
                            </div>
                        </div>
                        @else
                            <div class="place-order">
                                <h3>Không có sản phẩm trong giỏ hàng</h3>
                            </div>
                        @endif
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Partner Logo Section Begin -->

    <!-- Partner Logo Section End -->
    <script>
        var msg1 = '{{Session::get('order_success')}}';
        var exist1 = '{{Session::has('order_success')}}';
        if(exist1){
            swal({
                title: "Đặt hàng thành công.",
                text: "",
                type: "success",
                timer: 1200,
                showConfirmButton: false,
                position: 'top-end',
            });
        }

    </script>
@endsection
