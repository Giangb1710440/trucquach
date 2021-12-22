<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng Nhập</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="{{asset('public/login_page/images/icons/favicon.ico')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/vendor/bootstrap/css/bootstrap.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/vendor/animate/animate.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/vendor/css-hamburgers/hamburgers.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/vendor/animsition/css/animsition.min.css')}}">
    <!--=========================================A======================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/vendor/select2/select2.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('public/login_page/vendor/daterangepicker/daterangepicker.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/login_page/css/util.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/login_page/css/main.css') }}">
    <link rel="stylesheet" href="{{ asset('public/login_page/css/custom.css') }}">
    <!--===============================================================================================-->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>
    <script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>


</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Đăng Nhập
					</span>
            </div>

            @if(session()->has('message'))
                <p><strong style="color: red;">{{ session('message') }}</strong></p>
            @endif


            <form action="{{ route('checkLogin') }}" method="post" class="login100-form validate-form">
                @csrf

                <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                    <span class="label-input100">Username</span>
                    <input class="input100" type="text" name="username" placeholder="Enter username">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
                    <span class="label-input100">Password</span>
                    <input class="input100" type="password" name="pass" placeholder="Enter password">
                    <span class="focus-input100"></span>
                </div>

                <div class="flex-sb-m w-full p-b-30">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            Remember me
                        </label>
                    </div>

                    <div>
                        <a href="#" class="txt1">
                            Forgot Password?
                        </a>
                    </div>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" type="submit">
                        Login
                    </button>
                    <a style="background-color: lightskyblue" href="{{ url('register') }}" class="btn btn-info ml-3" id="btn_register">Đăng ký</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    var msg1 = '{{Session::get('register_success')}}';
    var exist1 = '{{Session::has('register_success')}}';
    if(exist1){
        swal({
            title: "Đã đăng ký tài khoản thành công.",
            text: "",
            type: "success",
            timer: 2000,
            showConfirmButton: false,
            position: 'top-end',
        });
    }
</script>

<!--===============================================================================================-->
<script src="{{asset('public/login_page/vendor/jquery/jquery-3.2.1.min.js')}}"></script>
<!--===============================================================================================-->
<script src="{{asset('public/login_page/vendor/animsition/js/animsition.min.js')}}"></script>
<!--===============================================================================================-->
<script src="{{asset('public/login_page/vendor/bootstrap/js/popper.js')}}"></script>
<script src="{{asset('public/login_page/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
<!--===============================================================================================-->
<script src="{{asset('public/login_page/vendor/select2/select2.min.js')}}"></script>
<!--===============================================================================================-->
<script src="{{asset('public/login_page/vendor/daterangepicker/moment.min.js')}}"></script>
<script src="{{asset('public/login_page/vendor/daterangepicker/daterangepicker.js')}}"></script>
<!--===============================================================================================-->
<script src="{{asset('public/login_page/vendor/countdowntime/countdowntime.js')}}"></script>
<!--===============================================================================================-->
<script src="{{asset('public/login_page/js/main.js')}}"></script>

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

</body>
</html>
