@extends('layout.master')
@section('title', 'Giỏ hàng')

@section('content')
    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            @if(Session::has('cart'))
                <div class="row">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                            <tr>
                                <th>Hình ảnh</th>
                                <th class="p-name">Tên sản phẩm</th>
                                <th>Giá bán</th>
                                <th>Số lượng</th>
                                <th>Tổng tiền</th>
                                <th><i class="ti-close"></i></th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($product_cart as $product)
                                <tr>
                                    <td class="cart-pic first-row">
                                        @foreach(json_decode($product['item']['image'], true) as $image)
                                            <img style="height: 100px; width: 100px;" src="{{ voyager::image($image) }}" alt="">
                                            @break
                                        @endforeach
                                    </td>
                                    <td class="cart-title first-row">
                                        <h5>{{ $product['item']['name_product'] }}</h5>
                                    </td>
                                    <td class="p-price first-row">{{ number_format($product['item']['unit_price']) }} đ</td>
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            <input style="width: 50%;" type="number" id="txt_solg" value="{{$product['qty']}}" class="form-control quantity"
                                                   onchange="update_cart({{ $product['item']['id'] }} + ',' + this.value)">
                                        </div>
                                    </td>
                                    <td class="total-price first-row">{{ number_format($product['item']['unit_price'] * $product['qty']) }} đ</td>
                                    <td class="close-td first-row">
                                        <a onclick="return xacnhanxoa('Ban co chac chan xoa?')" href="{{ route('getDeleteCart',$product['item']['id']) }}" class="btn btn-danger" data-toggle="tooltip" title="xóa">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">

                        </div>
                        <div class="col-lg-4 offset-lg-4">
                            <div class="proceed-checkout">
                                <ul>
                                    <li class="cart-total">Total <span>{{ number_format($totalPrice) }} đ</span></li>
                                </ul>
                                <a href="{{ route('checkout') }}" class="proceed-btn">ĐẶT HÀNG</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @else
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center">Không có sản phẩm trong giỏ hàng</h4>
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <script>
        var msg = '{{Session::get('delete_cart')}}';
        var exist = '{{Session::has('delete_cart')}}';
        if(exist){
            swal({
                title: "Đã xóa sản phẩm ra khỏi giỏ hàng.",
                text: "",
                type: "success",
                timer: 1200,
                showConfirmButton: false,
                position: 'top-end',
            });
        }

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

        function xacnhanxoa(msg){
            if(window.confirm(msg)){
                return true;
            }
            return false;
        }

        function update_cart(e) {
            var ele = e.split(",");
            var ktra = document.getElementById('txt_solg').value;
            if(ktra > 0){
                $.ajax({
                    url: '{{ route('getUpdateCart') }}',
                    method: "get",
                    data: {_token: '{{ csrf_token() }}',
                        id: ele[0],
                        quantity: ele[1]},
                    success: function (response) {
                        swal({
                            title: "Đã cập nhật",
                            text: "",
                            type: "success",
                            timer: 900,
                            showConfirmButton: false,
                            position: 'top-end',
                        });
                        window.setTimeout(function(){
                            location.reload();
                        } ,900);
                    }
                });
            }else{
                document.getElementById('txt_solg').value = 1;
            }
        };

    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

@endsection
