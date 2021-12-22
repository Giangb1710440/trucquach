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
        recognition.continuous = true;


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


