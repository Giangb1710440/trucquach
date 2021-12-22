<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng Ký</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="{{asset('public/register/fonts/material-icon/css/material-design-iconic-font.min.css')}}">

    <!-- Main css -->
    <link rel="stylesheet" href="{{asset('public/register/css/style.css') }}">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Đăng Ký</h2>

                    <form action="{{ url('post-register') }}" method="POST" class="register-form" id="register-form"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Your Name"/>
                            <strong style="color: red;">{{ $errors->first('name') }}</strong>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <input type="email" name="email" id="email" placeholder="Your Email" onblur="return isEmail()"/>
                            <strong style="color: red;">{{ $errors->first('email') }}</strong>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="pass" id="pass" placeholder="Password"/>
                            <strong style="color: red;">{{ $errors->first('pass') }}</strong>
                        </div>
                        <div class="form-group">
                            <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            <strong style="color: red;">{{ $errors->first('re_pass') }}</strong>
                        </div>
                        <div class="form-group">
                            <label for="re-pass"><i class="fa fa-phone"aria-hidden="true"></i></label>
                            <input type="text" name="phone_number" id="phone_number" placeholder="Phone number" onblur="return Test_numberphone()"/>
                            <strong style="color: red;">{{ $errors->first('phone_number') }}</strong>
                        </div>
                        <div class="form-group">
                            <label for="re-pass"><i class="fa fa-address-book" aria-hidden="true"></i></label>
                            <input type="text" name="address" id="address" placeholder="Enter your address"/>
                            <strong style="color: red;">{{ $errors->first('address') }}</strong>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="{{ asset('public/register/images/signup-image.jpg') }}" alt="sing up image"></figure>
                    <a href="#" class="signup-image-link">I am already member</a>
                </div>
            </div>
        </div>
    </section>

</div>

<script>
    function Test_numberphone(){
        var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        var mobile = $('#phone_number').val();
        if(mobile !==''){
            if (vnf_regex.test(mobile) == false)
            {
                alert('Số điện thoại không đúng định dạng. Vui lòng nhập lại');
            }
        }
    }
    function isEmail() {
        var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        var email = $('#email').val();
        if(email !==''){
            if(regex.test(email) == false){
                alert('Email không đúng định dạng. Vui lòng nhập lại');
            }
        }
    }
</script>

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

<!-- JS -->
<script src="{{asset('public/register/vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('public/register/js/main.js')}}"></script>
</body><!-- This templates was made by Colojs/main.jsrlib (https://colorlib.com) -->
</html>
