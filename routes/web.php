<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', 'HomeController@index')->name('home');

Route::get('login', 'HomeController@login')->name('get_login');
Route::post('check-login', 'HomeController@checkLogin')->name('checkLogin');

Route::get('register', 'HomeController@register');
Route::post('post-register', 'HomeController@postRegister');

Route::get('view-product/{id}', 'HomeController@viewProduct');
Route::get('cart', 'HomeController@cart');
Route::get('check-out', 'HomeController@checkout')->name('checkout');

Route::get('add-cart/{id}', 'HomeController@addCart')->name('addCart');
Route::get('get-cart', 'HomeController@getCart')->name('getCart');

Route::get('update-cart', 'HomeController@getUpdateCart')->name('getUpdateCart');

Route::get('delete-cart/{id}', 'HomeController@getDeleteCart')->name('getDeleteCart');

Route::post('post-check-out', 'HomeController@create')->name('postCheckout');

Route::get('/return-vnpay', 'HomeController@return');

Route::get('logout', 'HomeController@logout')->name('logout');

Route::post('post-rating-star/{userId}/{productId}', 'HomeController@postRatingStar')->name('postRatingStar');

Route::post('add-comment/{userId}/{productId}', 'HomeController@addComment')->name('addComment');

Route::get('profile/{userId}', 'HomeController@getProfile')->name('getProfile');
Route::put('update-profile/{userId}', 'HomeController@updateProfile')->name('updateProfile');

Route::get('change-password/{userId}', 'HomeController@changePassword')->name('changePassword');
Route::put('update-password/{userId}', 'HomeController@updatePassword')->name('updatePassword');

Route::get('search-product', 'HomeController@searchProduct')->name('searchProduct');

Route::get('view-category/{categoryId}', 'HomeController@viewCategory')->name('viewCategory');

Route::group(['prefix' => 'admin'], function () {
    Route::get('browse-order/{id}', 'HomeController@browseOrder')->name('browseOrder');
    Route::get('/revenue', 'HomeController@revenue')->name('revenue');
    Route::get('order-detail/{orderId}', 'HomeController@orderDetail')->name('orderDetail');
    Voyager::routes();
});
