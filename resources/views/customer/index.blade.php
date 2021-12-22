<!doctype html>
<html lang="en">
<head>
    <title>Trang chu</title>
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
<!-- Page Preloder -->
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
                        <a href="{{ url('/home') }}" style="color: deeppink">
                            TRUCQUACH
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <style>
                        @import url('https://fonts.googleapis.com/css?family=Montserrat');

                        #search-form {
                            width: 100%;
                            margin: 0 auto;
                            position: relative;
                        }
                        #search-form input {
                            width: 100%;
                            font-size: 1.5rem;
                            padding: 10px 15px;
                            border: 2px solid #ccc;
                            border-radius: 2px;
                        }
                        #search-form button {
                            position: absolute;
                            top: 0;
                            right: 0;
                            bottom: 0;
                            background-color: transparent;
                            outline: none;
                            border: none;
                            width: 3rem;
                            text-align: center;
                            font-size: 1.75rem;
                            cursor: pointer;
                            color: #333;
                        }
                    </style>
                    <form action="{{ route('searchProduct') }}" method="get" id="search-form">
                        <input name="keyWord" type="text" placeholder="Bạn cần gì ?" autocomplete="off" autofocus>
                    </form>
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
    <div class="nav-item">
        <div class="container">
            <div class="nav-depart">
                <div class="depart-btn">
                    <i class="ti-menu"></i>
                    <span>Danh Mục</span>
                    <ul class="depart-hover">
                        @php($categorys = DB::table('categories')->get())
                        @foreach($categorys as $category)
                            <li class="active"><a style="color: black" href="{{ route('viewCategory', $category->id) }}">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>
            </div>
            </div>
            <nav class="nav-menu mobile-menu">
                <ul>
                    <li class="active"><a href="{{ url('/home') }}">Home</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
        </div>
    </div>
</header>
<!-- Header End -->

<!-- Hero Section Begin -->
<section class="hero-section">
    <div class="hero-items owl-carousel">
        <div class="single-hero-items set-bg" data-setbg="{{asset('public/img/hinh3.jpg')}}">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <span>Women's Fashion</span>
                        <h1>Truc Quach Store</h1>
                        <p>Tại TrucQuachStore, thời trang là niềm đam mê của chúng tôi! Mua ngay Váy đầm, quần jean , set đồ nữ siêu xinh & nhiều hơn nữa !</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-hero-items set-bg" data-setbg="{{asset('public/img/hinh2.jpg')}}">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <span>Women's Fashion</span>
                        <h1>Truc Quach Store</h1>
                        <p>Chúng tôi cố gắng để đổi mới, kích động, và cung cấp cho khách hàng của chúng tôi với một loạt các cái nhìn nóng nhất với mức giá hot nhất.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Women Banner Section Begin -->
<section class="women-banner spad" style="padding-bottom: 0px;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="filter-control">
                    <ul>
                        <li class="active">Sản Phẩm Hot</li>

                    </ul>
                </div>
                <div class="product-slider owl-carousel">
                    @foreach($products as $product)
                        <div class="product-item">
                            <div class="pi-pic">
                                @foreach(json_decode($product->image, true) as $image)
                                    <a href="{{ url('/view-product', $product->id) }}">
                                        <img src="{{ voyager::image($image) }}" alt="">
                                    </a>
                                    @break
                                @endforeach
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active">
                                        <a href="{{ route('addCart', $product->id) }}" title="Thêm vào giỏ hàng">
                                            <i class="icon_bag_alt"></i>
                                        </a>
                                    </li>
                                    <li class="quick-view"><a href="{{ url('/view-product', $product->id) }}">Xem chi tiết</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">

                                <a href="{{ url('/view-product', $product->id) }}">
                                    <h5>{{ $product->name_product }}</h5>
                                </a>
                                <div class="product-price">
                                    {{ number_format($product->unit_price) }} đ
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Women Banner Section End -->

<!-- Man Banner Section Begin -->
<section class="man-banner spad">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="filter-control">
                    <ul>
                        <li class="active">Sản Phẩm Hot</li>
                    </ul>
                </div>
                <div class="product-slider owl-carousel">
                    @foreach($product_news as $product_new)
                        <div class="product-item">
                            <div class="pi-pic">
                                @foreach(json_decode($product_new->image, true) as $image)
                                    <a href="{{ url('/view-product', $product_new->id) }}">
                                        <img src="{{ voyager::image($image) }}" alt="">
                                    </a>
                                    @break
                                @endforeach
                                <div class="icon">
                                    <i class="icon_heart_alt"></i>
                                </div>
                                <ul>
                                    <li class="w-icon active">
                                        <a href="{{ route('addCart', $product_new->id) }}" title="Thêm vào giỏ hàng">
                                            <i class="icon_bag_alt"></i>
                                        </a>
                                    </li>
                                    <li class="quick-view"><a href="{{ url('/view-product', $product_new->id) }}">Xem chi tiết</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <a href="{{ url('/view-product', $product_new->id) }}">
                                    <h5>{{ $product_new->name_product }}</h5>
                                </a>
                                <div class="product-price">
                                    {{ number_format($product_new->unit_price) }} đ
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Man Banner Section End -->

<!-- Footer Section Begin -->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="footer-left">
                    <h3 STYLE="color: red;">TRUC QUACH</h3>
                    <ul>
                        <li>Địa chỉ: 140/39 Tran Hung Dao TPST</li>
                        <li>Phone: 0822600465</li>
                        <li>Email: TrucQuachStore@gmail.com</li>
                    </ul>
                    <div class="footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="newslatter-item">
                    <h5>Đăng ký nhận bản tin TrucQuachStore</h5>
                    <p>Đừng bỏ lỡ hàng ngàn sản phẩm và chương trình siêu hấp dẫn , ưu đãi đặc biệt.</p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<script>
    var msg = '{{Session::get('add_cart_success')}}';
    var exist = '{{Session::has('add_cart_success')}}';
    if(exist){
        swal({
            title: "Đã thêm vào giỏ hàng",
            text: "",
            type: "success",
            timer: 1200,
            showConfirmButton: false,
            position: 'top-end',
        });
    }
</script>

<script>
    const searchForm = document.querySelector("#search-form");
    const searchFormInput = searchForm.querySelector("input"); // <=> document.querySelector("#search-form input");
    const info = document.querySelector(".info");

    // The speech recognition interface lives on the browser’s window object
    const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition; // if none exists -> undefined

    if(SpeechRecognition) {
        console.log("Your Browser supports speech Recognition");

        const recognition = new SpeechRecognition();
        recognition.lang = "vi";
        //recognition.continuous = true;


        searchForm.insertAdjacentHTML("beforeend", '<button type="button"><i class="fa fa-microphone" aria-hidden="true"></i></button>');
        searchFormInput.style.paddingRight = "50px";

        const micBtn = searchForm.querySelector("button");
        const micIcon = micBtn.firstElementChild;

        micBtn.addEventListener("click", micBtnClick);
        function micBtnClick() {
            if(micIcon.classList.contains("fa-microphone")) { // Start Voice Recognition
                recognition.start(); // First time you have to allow access to mic!
            }
            else {
                recognition.stop();
            }
        }

        recognition.addEventListener("start", startSpeechRecognition); // <=> recognition.onstart = function() {...}
        function startSpeechRecognition() {
            micIcon.classList.remove("fa-microphone");
            micIcon.classList.add("fa-microphone-slash");
            searchFormInput.focus();
            console.log("Voice activated, SPEAK");
        }

        recognition.addEventListener("end", endSpeechRecognition); // <=> recognition.onend = function() {...}
        function endSpeechRecognition() {
            micIcon.classList.remove("fa-microphone-slash");
            micIcon.classList.add("fa-microphone");
            searchFormInput.focus();
            console.log("Speech recognition service disconnected");
        }

        recognition.addEventListener("result", resultOfSpeechRecognition); // <=> recognition.onresult = function(event) {...} - Fires when you stop talking
        function resultOfSpeechRecognition(event) {
            const current = event.resultIndex;
            const transcript = event.results[current][0].transcript;

            if(transcript.toLowerCase().trim()==="stop recording") {
                recognition.stop();
            }
            else if(!searchFormInput.value) {
                searchFormInput.value = transcript;
            }
            else {
                if(transcript.toLowerCase().trim()==="go") {
                    searchForm.submit();
                }
                else if(transcript.toLowerCase().trim()==="reset input") {
                    searchFormInput.value = "";
                }
                else {
                    searchFormInput.value = transcript;
                }
            }
            // searchFormInput.value = transcript;
            // searchFormInput.focus();
            // setTimeout(() => {
            //   searchForm.submit();
            // }, 500);
        }

        info.textContent = 'Voice Commands: "stop recording", "reset input", "go"';

    }
    else {
        console.log("Your Browser does not support speech Recognition");
        info.textContent = "Your Browser does not support Speech Recognition";
    }
</script>

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
