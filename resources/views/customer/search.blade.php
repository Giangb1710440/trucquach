@extends('layout.master')
@section('title', 'Tìm kiếm')
@section('content')
    <section class="women-banner spad">
        <div class="container-fluid">
            <style>
                .responsive{
                    width: 140px;
                    height: 140px;
                    border-radius: 50%;
                    border: 1px solid #a0aec0;
                }
                .card-img-user{
                    padding-right: 1px;
                }
                .card-information{
                    padding-left: 1px;
                }

                .imagePreview {
                    margin: auto;
                    width: 100px;
                    height: 100px;
                    border-radius: 50%;
                    display: none;
                    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                }

                .button-wrapper {
                    position: relative;
                    width: 100px;
                    text-align: center;
                    font-weight: bold;
                }

                .button-wrapper span.label {
                    position: relative;
                    z-index: 0;
                    display: inline-block;
                    width: 100%;
                    background: #00bfff;
                    cursor: pointer;
                    color: #fff;
                    padding: 10px 0;
                    text-transform:uppercase;
                    font-size:12px;
                    border-radius: 5px;
                    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                }
                #upload {
                    display: inline-block;
                    position: absolute;
                    z-index: 1;
                    width: 100%;
                    height: 50px;
                    top: 0;
                    left: 0;
                    opacity: 0;
                    cursor: pointer;
                }
                /*Small devices (landscape phones, 576px and up)*/
                @media (max-width: 576px) {
                    .card-body .row .card-img-user{
                        text-align: center;
                    }
                    .card-body .row .card-img-user .responsive{
                        margin-bottom: 20px;
                        text-align: center;
                        width: 130px;
                        height: 130px;
                    }
                    .card-information{
                        padding-left: 5%;
                    }
                    .form-group .col-12{
                        font-size: 13px;
                        margin-bottom: 5px;
                    }
                    .form-group .col-12 input{
                        font-size: 13px;
                    }
                    .form-check-inline .form-check-label input{
                        font-size: 13px;
                    }
                }
            </style>

            <div class="card">
                <div class="card-header p-2">
                    <b>Tìm thấy {{ $count }} sản phẩm</b>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product-slider owl-carousel">
                                @foreach($products as $sp)
                                    <div class="product-item">
                                        <div class="pi-pic">
                                            @foreach(json_decode($sp->image, true) as $image)
                                                <a href="{{ url('/view-product', $sp->id) }}">
                                                    <img src="{{ voyager::image($image) }}" alt="">
                                                </a>
                                                @break
                                            @endforeach
                                            <div class="icon">
                                                <i class="icon_heart_alt"></i>
                                            </div>
                                            <ul>
                                                <li class="w-icon active">
                                                    <a href="{{ route('addCart', $sp->id) }}" title="Thêm vào giỏ hàng">
                                                        <i class="icon_bag_alt"></i>
                                                    </a>
                                                </li>
                                                <li class="quick-view"><a href="{{ url('/view-product', $sp->id) }}">Xem chi tiết</a></li>
                                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="pi-text">
                                            <a href="{{ url('/view-product', $sp->id) }}">
                                                <h5>{{ $sp->name_product }}</h5>
                                            </a>
                                            <div class="product-price">
                                                {{ number_format($sp->unit_price) }} đ
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

    </section>
@endsection
