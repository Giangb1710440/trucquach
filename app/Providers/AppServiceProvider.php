<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Giohang;
use App\Product;
use Session;
use DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('layout.header', function($view){
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Giohang($oldCart);
                $view->with([
                    'cart'=>Session::get('cart'),
                    'product_cart'=>$cart->items,
                    'totalPrice'=>$cart->totalPrice,
                    'totalQty'=>$cart->totalQty
                ]);
            }
        });

        view()->composer('customer.index', function($view){
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Giohang($oldCart);
                $view->with([
                    'cart'=>Session::get('cart'),
                    'product_cart'=>$cart->items,
                    'totalPrice'=>$cart->totalPrice,
                    'totalQty'=>$cart->totalQty
                ]);
            }
        });

        view()->composer('customer.cart', function($view){
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Giohang($oldCart);
                $view->with([
                    'cart'=>Session::get('cart'),
                    'product_cart'=>$cart->items,
                    'totalPrice'=>$cart->totalPrice,
                    'totalQty'=>$cart->totalQty
                ]);
            }
        });

        view()->composer('customer.check_out', function($view){
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Giohang($oldCart);
                $view->with([
                    'cart'=>Session::get('cart'),
                    'product_cart'=>$cart->items,
                    'totalPrice'=>$cart->totalPrice,
                    'totalQty'=>$cart->totalQty
                ]);
            }
        });
    }
}
