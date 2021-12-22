<!doctype html>
<html lang="en">
<head>
    <title>@yield('title')</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{ asset('public/css/bootstrap.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/font-awesome.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/themify-icons.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/elegant-icons.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/owl.carousel.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/nice-select.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/jquery-ui.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/slicknav.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('public/css/style.css') }}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/css/index.css')}}">
    <script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>
    <script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>
</head>
<body>

<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header-section" style="background-color: #ebebeb">
    <div class="header-top">
        <div class="container" >
            <div class="ht-left">
                <div class="mail-service">
                    <i class=" fa fa-envelope"></i>
                    TrucQuachStore@gmail.com
                </div>
                <div class="phone-service">
                    <i class=" fa fa-phone"></i>
                    0822600465
                </div>
            </div>
            <div class="ht-right">

            </div>
        </div>
    </div>
    <div class="container">
        <div class="inner-header">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="logo">
                        <a href="{{ url('/') }}" style="color: deeppink">
                            TRUCQUACH
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="advanced-search">
                        <div class="input-group">
                            <input type="text" placeholder="Bạn cần gì ?">
                            <button type="button"><i class="ti-search"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-right col-md-4">
                    <ul class="nav-right">

                        @if(Auth::check())
                            <style>
                                .dropdown{
                                    float: left;
                                    margin-left: 30px;
                                }
                                .dropdown:hover>.dropdown-menu {
                                    display: block;

                                }

                                .dropdown>.dropdown-toggle:active {
                                    /*Without this, clicking will make it sticky*/
                                    pointer-events: none;
                                }
                                .cart-icon{
                                    margin-right: 90px;
                                }
                            </style>
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-user-circle" aria-hidden="true"></i> {{ Auth::user()->name }}
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="{{ route('getProfile', Auth::user()->id) }}">Thông tin</a>
                                    <a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a>
                                </div>
                            </div>

                            <li class="cart-icon">
                                <a href="{{ route('getCart') }}">
                                    <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    @if(Session::has('cart'))
                                        <span>{{Session('cart')->totalQty}}</span>
                                    @else
                                        <span>0</span>
                                    @endif
                                </a>
                                @if(Session::has('cart'))
                                    <div class="cart-hover">
                                        <div class="select-items">
                                            <table>
                                                <tbody>
                                                @foreach($product_cart as $product)
                                                    <tr>
                                                        @foreach(json_decode($product['item']['image'], true) as $image)
                                                            <td class="si-pic">
                                                                <img style="width: 80px; height: 80px" src="{{ voyager::image($image) }}" alt="">
                                                            </td>
                                                            @break
                                                        @endforeach
                                                        <td class="si-text">
                                                            <div class="product-selected">
                                                                <p>{{ number_format($product['item']['unit_price']) }} VNĐ x {{ $product['qty'] }}</p>
                                                                <h6>{{ $product['item']['name'] }}</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <i class="ti-close"></i>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="select-total">
                                            <span>total:</span>
                                            <h5>{{ number_format($totalPrice) }} VNĐ</h5>
                                        </div>
                                        <div class="select-button">
                                            <a href="{{ route('getCart') }}" class="primary-btn view-card">XEM GIỎ HÀNG</a>
                                            <a href="{{ route('checkout') }}" class="primary-btn checkout-btn">ĐẶT HÀNG</a>
                                        </div>
                                    </div>
                            </li>
                        @endif
                        @else
                            <li class="cart-icon">
                                <a href="{{ route('getCart') }}">
                                    <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                    @if(Session::has('cart'))
                                        <span>{{Session('cart')->totalQty}}</span>
                                    @else
                                        <span>0</span>
                                    @endif
                                </a>
                                @if(Session::has('cart'))
                                    <div class="cart-hover">
                                        <div class="select-items">
                                            <table>
                                                <tbody>
                                                @foreach($product_cart as $product)
                                                    <tr>
                                                        @foreach(json_decode($product['item']['image'], true) as $image)
                                                            <td class="si-pic">
                                                                <img style="width: 80px; height: 80px" src="{{ voyager::image($image) }}" alt="">
                                                            </td>
                                                            @break
                                                        @endforeach
                                                        <td class="si-text">
                                                            <div class="product-selected">
                                                                <p>{{ number_format($product['item']['unit_price']) }} VNĐ x {{ $product['qty'] }}</p>
                                                                <h6>{{ $product['item']['name'] }}</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <i class="ti-close"></i>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="select-total">
                                            <span>total:</span>
                                            <h5>{{ number_format($totalPrice) }} VNĐ</h5>
                                        </div>
                                        <div class="select-button">
                                            <a href="{{ route('getCart') }}" class="primary-btn view-card">XEM GIỎ HÀNG</a>
                                            <a href="{{ route('checkout') }}" class="primary-btn checkout-btn">ĐẶT HÀNG</a>
                                        </div>
                                    </div>
                            </li>
                        @endif

                        <li>
                            <a href="{{ url('login') }}" class="btn btn-primary"><i class="fa fa-user" aria-hidden="true"></i> Đăng nhập</a>
                        </li>

                        <li>
                            <a href="{{ url('register') }}" class="btn btn-danger"><i class="fa fa-registered" aria-hidden="true"></i> Đăng ký</a>
                        </li>
                        @endif

                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>


<br><br>

@yield('content')

<br><br>

@include('layout.footer')




<script src="{{asset('public/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{asset('public/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/js/jquery-ui.min.js')}}"></script>
<script src="{{asset('public/js/jquery.countdown.min.js')}}"></script>
<script src="{{asset('public/js/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('public/js/jquery.zoom.min.js')}}"></script>
<script src="{{asset('public/js/jquery.dd.min.js')}}"></script>
<script src="{{asset('public/js/jquery.slicknav.js')}}"></script>
<script src="{{asset('public/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('public/js/main.js')}}"></script>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</body>
</html>
