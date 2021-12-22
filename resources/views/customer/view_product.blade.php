@extends('layout.master')
@section('title', 'Xem sản phẩm')
@section('content')

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <style>
            .rating_circle{
                width: 220px;
                height: 220px;
                border-radius: 50%;
                border: 1px none;
                font-size: 50px;
                font-weight: bold;
            }
            .rating_text{
                margin-top:1px;
                font-size: 20px;
            }

            /* Stylingand links*/
            .starrating > input {display: none;}
            .starrating > label:before {
                content: "\f005";
                margin: 5px;
                font-size:50px;
                font-family: FontAwesome, serif;
                display: inline-block;
            }
            .starrating > label{color: #4a5568;}
            .starrating > input:checked ~ label{ color: #ffca08 ; }
            .starrating > input:hover ~ label{ color: #ffca08 ;  }
        </style>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    @foreach($product as $item)
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="product-pic-zoom">
                                    @foreach(json_decode($item->image, true) as $image)
                                        <img class="product-big-img" src="{{ voyager::image($image) }}" alt="">
                                        @break
                                    @endforeach
                                    <div class="zoom-icon">
                                        <i class="fa fa-search-plus"></i>
                                    </div>
                                </div>
                                <div class="product-thumbs">
                                    <div class="product-thumbs-track ps-slider owl-carousel">
                                        @foreach(json_decode($item->image, true) as $image)
                                            <div class="pt active" data-imgbigurl="{{ voyager::image($image) }}">
                                                <img style="height: 200px;" src="{{ voyager::image($image) }}" alt="">
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="product-details">
                                    <div class="pd-title">
                                        <h3>{{ $item->name_product }}</h3>
                                        <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                        <strong style="color: red">Còn lại {{ $item->status }} sản phẩm</strong>
                                    </div>
                                    <div class="pd-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <span>(5)</span>
                                    </div>
                                    <div class="pd-desc">
                                        <p>{{ $item->description }}</p>
                                        <h4>{{ number_format($item->unit_price) }} đ</h4>
                                    </div>
                                    <div class="pd-size-choose">
                                        <div class="sc-item">
                                            <input type="radio" id="sm-size">
                                            <label for="sm-size">s</label>
                                        </div>
                                        <div class="sc-item">
                                            <input type="radio" id="md-size">
                                            <label for="md-size">m</label>
                                        </div>
                                        <div class="sc-item">
                                            <input type="radio" id="lg-size">
                                            <label for="lg-size">l</label>
                                        </div>
                                        <div class="sc-item">
                                            <input type="radio" id="xl-size">
                                            <label for="xl-size">xs</label>
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <form action="{{ route('addCart', $item->id) }}" method="get">
                                            @csrf
                                            <div class="pro-qty">
                                                <input type="text" value="1" name="productQuantity">
                                            </div>
                                            @if ($item->status < 1)
                                                <a href="#" class="primary-btn pd-cart btn btn-secondary disabled">Hết hàng</a>
                                            @else
                                                <button style="border: none" type="submit" class="primary-btn pd-cart">
                                                    Thêm vào giỏ hàng
                                                </button>
                                            @endif
                                        </form>
                                    </div>

                                    <div class="pd-share">

                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                    @if(Auth()->check())
                        <div class="product-tab">
                            <div class="tab-item">
                                <ul class="nav" role="tablist">
                                    <li>
                                        <a class="active" data-toggle="tab" href="#tab-1" role="tab">Đánh giá</a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#tab-2" role="tab">Bình luận</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-item-content">
                                <div class="tab-content">
                                    <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                        <div class="card pb-0 mt-2">
                                            <div class="card-body pb-0">
                                                <div class="row">
                                                    <div class="col-12 col-md-4">
                                                        <button class="rating_circle">
                                                            @php($avg_rating = DB::table('rating_stars')->where('product_id', $item->id)->avg('rating_star'))
                                                            {{ round($avg_rating, 1) }} / <span class="text-warning">5 <i class="fa fa-star" style="color:#ffca08;"></i></span>
                                                        </button>
                                                    </div>
                                                    <div class="col-10 col-md-6">
                                                        <div class="progress mt-2" style="height:15px;">
                                                            <div class="progress-bar bg-success" style="width:100%;height:15px;">5 Sao</div>
                                                        </div>
                                                        <div class="progress mt-3" style="height:15px;">
                                                            <div class="progress-bar bg-info" style="width:80%;height:15px;">4 Sao</div>
                                                        </div>
                                                        <div class="progress mt-3" style="height:15px;">
                                                            <div class="progress-bar bg-primary" style="width:60%;height:15px;">3 Sao</div>
                                                        </div>
                                                        <div class="progress mt-3" style="height:15px;">
                                                            <div class="progress-bar bg-warning" style="width:40%;height:15px;">2 Sao</div>
                                                        </div>
                                                        <div class="progress mt-3" style="height:15px;">
                                                            <div class="progress-bar bg-danger" style="width:20%;height:15px;">1 Sao</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-2 col-md-2 mt-0">
                                                        <div class="row">
                                                            <b class="rating_text">
                                                                @php($count_5 = DB::table('rating_stars')->where([['product_id','=',$item->id],['rating_star', '=',5]])->count())
                                                                {{ $count_5 }}
                                                            </b>
                                                        </div>
                                                        <div class="row">
                                                            <b class="rating_text">
                                                                @php($count_4 = DB::table('rating_stars')->where([['product_id','=',$item->id],['rating_star', '=',4]])->count())
                                                                {{ $count_4 }}
                                                            </b>
                                                        </div>
                                                        <div class="row">
                                                            <b class="rating_text">
                                                                @php($count_3 = DB::table('rating_stars')->where([['product_id','=',$item->id],['rating_star', '=',3]])->count())
                                                                {{ $count_3 }}
                                                            </b>
                                                        </div>
                                                        <div class="row">
                                                            <b class="rating_text">
                                                                @php($count_2 = DB::table('rating_stars')->where([['product_id','=',$item->id],['rating_star','=',2]])->count())
                                                                {{ $count_2 }}
                                                            </b>
                                                        </div>
                                                        <div class="row">
                                                            <b class="rating_text">
                                                                @php($count_1 = DB::table('rating_stars')->where([['product_id','=',$item->id],['rating_star','=',1]])->count())
                                                                {{ $count_1 }}
                                                            </b>
                                                        </div>
                                                    </div>
                                                </div>

                                                @if (Auth::check())
                                                    <form action="{{ route('postRatingStar', [Auth::user()->id, $item->id]) }}" method="post" id="FormSubmit">
                                                        @csrf
                                                        <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
                                                            <input type="radio" id="star5" name="rating" value="5" onclick="return SubmitFormFunction();"/><label for="star5" title="5 star"></label>
                                                            <input type="radio" id="star4" name="rating" value="4" onclick="return SubmitFormFunction();"/><label for="star4" title="4 star"></label>
                                                            <input type="radio" id="star3" name="rating" value="3" onclick="return SubmitFormFunction();"/><label for="star3" title="3 star"></label>
                                                            <input type="radio" id="star2" name="rating" value="2" onclick="return SubmitFormFunction();"/><label for="star2" title="2 star"></label>
                                                            <input type="radio" id="star1" name="rating" value="1" onclick="return SubmitFormFunction();"/><label for="star1" title="1 star"></label>
                                                        </div>
                                                    </form>
                                                @else
                                                    <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
                                                        <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="5 star" onclick="MessageFunction()"></label>
                                                        <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="4 star" onclick="MessageFunction()"></label>
                                                        <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="3 star" onclick="MessageFunction()"></label>
                                                        <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="2 star" onclick="MessageFunction()"></label>
                                                        <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="1 star" onclick="MessageFunction()"></label>
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                        <div class="customer-review-option">
                                            @php($sumComment = DB::table('comments')->where('product_id', $item->id)->count())
                                            @php($comments = DB::table('comments')->where('product_id', $item->id)->get())
                                            <h4>{{ $sumComment }} bình luận</h4>
                                            <div class="comment-option">
                                                @foreach($comments as $comment)
                                                    <div class="co-item">
                                                        @php($user = DB::table('users')->where('id', $comment->user_id)->first())
                                                        @php($ratingStar = DB::table('rating_stars')->where('user_id', $comment->user_id)
                                                                ->where('product_id', $comment->product_id)->first())
                                                        <div class="avatar-pic">
                                                            <img src="{{ asset('public/storage/'.$user->avatar) }}" alt="">
                                                        </div>
                                                        <div class="avatar-text">
                                                            <div class="at-rating">
                                                                @if($ratingStar->rating_star == 1)
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                @elseif($ratingStar->rating_star == 2)
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                @elseif($ratingStar->rating_star == 3)
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                @elseif($ratingStar->rating_star == 4)
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                @elseif($ratingStar->rating_star == 5)
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                @else
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                @endif
                                                            </div>
                                                            <h5>{{ $user->name }} <span>{{ \Carbon\Carbon::create($comment->created_at)->format('d-m-Y') }}</span></h5>
                                                            <div class="at-reply">{{ $comment->content }}</div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>

                                            <div class="leave-comment">
                                                <h4>Thêm bình luận</h4>
                                                <form action="{{ route('addComment', [Auth::user()->id, $item->id]) }}" class="comment-form" method="post">
                                                    @csrf
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <textarea placeholder="Messages" name="comment"></textarea>
                                                            <button type="submit" class="site-btn">Bình luận</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif

                    <div class="product-tab">
                        <div class="tab-item">
                        </div>
                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="filter-control">
                                                    <ul>
                                                        <li class="active">Sản Phẩm Liên Quan</li>

                                                    </ul>
                                                </div>
                                                <div class="product-slider owl-carousel">
                                                    @foreach($lienquan as $item1)
                                                        <div class="product-item">
                                                        <div class="pi-pic">
                                                            @foreach(json_decode($item1->image, true) as $image)
                                                                <a href="{{ url('/view-product', $item1->id) }}">
                                                                    <img src="{{ voyager::image($image) }}" alt="">
                                                                </a>
                                                                @break
                                                            @endforeach
                                                            <div class="icon">
                                                                <i class="icon_heart_alt"></i>
                                                            </div>
                                                            <ul>
                                                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                                                <li class="quick-view">
                                                                    <a href="{{ url('/view-product', $item1->id) }}">Xem chi tiết</a>
                                                                </li>
                                                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="pi-text">

                                                            <a href="{{ url('/view-product', $item1->id) }}">
                                                                <h5>{{ $item1->name_product }}</h5>
                                                            </a>
                                                            <div class="product-price">
                                                                {{ number_format($item1->unit_price) }} đ

                                                            </div>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @if(session()->has('message_success'))
            <script>
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: '{{ session()->get('message_success') }}',
                    showConfirmButton: false,
                    timer: 1000
                })
            </script>
        @endif

        @if(session()->has('message_error'))
            <script>
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    title: '{{ session()->get('message_error') }}',
                    showConfirmButton: false,
                    timer: 3000
                })
            </script>
        @endif

        @if(session()->has('comment_success'))
            <script>
                Swal.fire({
                    position: 'center',
                    icon: 'error',
                    title: '{{ session()->get('comment_success') }}',
                    showConfirmButton: false,
                    timer: 3000
                })
            </script>
        @endif

    </section>
    <!-- Product Shop Section End -->
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
        var msg = '{{Session::get('add_cart_fail')}}';
        var exist = '{{Session::has('add_cart_fail')}}';
        if(exist){
            swal({
                title: "Vượt quá số lượng sản phẩm",
                text: "",
                type: "info",
                timer: 1200,
                showConfirmButton: false,
                position: 'top-end',
            });
        }
    </script>

    <script>
        $(document).ready(function(){
            $('[data-toggle="popover"]').popover();
        });

        function MessageFunction() {
            Swal.fire({
                position: 'center',
                icon: 'error',
                title: 'Đăng nhập để đánh giá sao',
                showConfirmButton: false,
                timer: 1500
            });
            setTimeout(function() {
                location.href = "{{ url('/login') }}";
            }, 2000);
        }

        function SubmitFormFunction() {
            document.getElementById("FormSubmit").submit();
        }
    </script>

@endsection
