<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Customer;
use App\Order;
use App\OrderDetail;
use App\RatingStar;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use validate;
use App\User;
use Hash;
use Session;
use App\Giohang;
use App\Product;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{

    public function index()
    {
        $product = DB::table('products')->take(4)->latest()->get();
        $product_new = DB::table('products')->take(4)->get();
        return view('customer.index')->with([
            'products' => $product,
            'product_news' => $product_new
        ]);
    }

    public function  login(){
        return view('customer.login_page');
    }

    public function checkLogin(Request $res){


        $email = $res->input('username');
        $password = $res->input('pass');

        if(Auth::attempt(['email' => $email, 'password' => $password, 'role_id' => 1])){
            return redirect()->route('voyager.dashboard');
        }elseif (Auth::attempt(['email' => $email, 'password' => $password, 'role_id' => 2])){
            return redirect()->route('home');
        }else{
            return redirect()->back()->with('message', 'Email hoặc mật khẩu của bạn không đúng!');
        }
    }

    public function  register(){
        return view('customer.register');
    }

    public function postRegister(Request $request){
        $this->validate($request,
            [
                'email' => 'unique:users,email',
                'name' => 'required',
                'pass' => 'required',
                're_pass' => 'required',
                'phone_number' => 'required',
                'address' => 'required'
            ],[
                'email.unique' => 'Email đã tồn tại',
                'name.required' => 'Vui lòng nhập tên',
                'pass.required' => 'Vui lòng nhập tên',
                're_pass.required' => 'Vui lòng nhập tên',
                'phone_number.required' => 'Vui lòng nhập tên',
                'address.required' => 'Vui lòng nhập tên',
            ]
        );

        $pass = $request->input('pass');
        $re_pass = $request->input('re_pass');

        if($pass == $re_pass){
            $user = new User;

            $level = DB::table('roles')->where('name', 'user')->get();
            foreach($level as $val){
                $level_member = $val->id;
            }
            $user->role_id  = $level_member;

            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->phone = $request->input('phone_number');
            $user->address = $request->input('address');
            $user->password = Hash::make($pass);
            $user->save();

            $register_success = Session::get('register_success');
            Session::put('register_success');

            return redirect()->route('get_login')->with('register_success','Đã đăng ký tài khoản thành công');
        }else{
            return redirect()->back()->with('message', 'Xác nhận mật khẩu sai!');
        }

    }

    public function viewProduct($id){
        $product = DB::table('products')->where('id', $id)->get();
        foreach ($product as $val){
            $lienquan = DB::table('products')->where('category_id', $val->category_id)->take(4)->latest()->get();
        }

        return view('customer.view_product')->with([
            'product' => $product,
            'lienquan' => $lienquan
        ]);
    }

    public function cart()
    {
        return view('customer.cart');
    }

    public function checkout(Request $request)
    {
        return view('customer.check_out');
    }

    public function addCart($id, Request $request){
        $productQuantity = $request->input('productQuantity');
        $product = Product::find($id);

        if($product->status < $productQuantity) {
            return redirect()->back()->with('add_cart_fail', 'Vượt quá số lượng sản phẩm');
        }

        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Giohang($oldCart);
        if(is_null($productQuantity)){
            $cart->addOnly($product, $id);
        }else {
            $cart->add($product, $id, $productQuantity);
        }
        $request->session()->put('cart', $cart);

        $add_cart_success = Session::get('add_cart_success');
        Session::put('add_cart_success');

        return redirect()->back()->with('add_cart_success', 'Đã thêm vào giỏ hàng');
    }

    public function getCart(){
        return view('customer.cart');
    }

    public function getUpdateCart(Request $request){
        if($request->id and $request->quantity){
            $oldCart = Session::has('cart')?Session::get('cart'):null;
            $cart = new Giohang($oldCart);
            $cart->update_cart($request->id,$request->quantity);
            session()->put('cart', $cart);
        }
    }

    public function getDeleteCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Giohang($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>0){
            Session::put('cart', $cart);
        }else{
            Session::forget('cart');
        }
        $delete_cart = Session::get('delete_cart');
        Session::put('delete_cart');
        return redirect()->back()->with('delete_cart', 'Đã xóa sản phẩm ra khỏi giỏ hàng');
    }

    public function postCheckout(Request $request){
        $cart = Session::get('cart');

        $id = $request->input('user_id');
        $total = $request->input('total');
        $require_date = Carbon::now();

        if($id == -1){
            $customer = new Customer;
            $customer->name = $request->input('name');
            $customer->email = $request->input('email');
            $customer->phone = $request->input('phone');
            $customer->address = $request->input('address');
            $customer->save();

            $order = new Order;
            $order->user_id = $customer->id;
            $order->require_date = $require_date;
            $order->total_money = floatval($total) * 1000;
            $order->status = 0;
            $order->save();
        }else{
            $order = new Order;
            $order->user_id = $id;
            $order->require_date = $require_date;
            $order->total_money = floatval($total) * 1000 ;
            $order->status = 0;
            $order->save();
        }

        foreach($cart->items as $key => $value){
            $orderDetail = new OrderDetail;
            $orderDetail->order_id = $order->id;
            $orderDetail->product_id = $key;
            $orderDetail->quantity = $value['qty'];
            $orderDetail->price = ($value['price']/$value['qty']);
            $orderDetail->save();
        }
        Session::forget('cart');

        $order_success = Session::get('order_success');
        Session::put('order_success');
        return redirect()->back()->with('order_success','Đặt hàng thành công');

    }

    public function create(Request $request){

        $id = $request->input('user_id');
        $name = $request->input('name');
        $email = $request->input('email');
        $phone = $request->input('phone');
        $address = $request->input('address');
        $total = $request->input('total');

        $object = array('id' => $id, 'name' => $name, 'phone' => $phone, 'email' => $email, 'address' => $address, 'total' => $total);
        $object = json_encode($object);

        $checkoutInfo = Session('checkoutInfo')?Session::get('checkoutInfo'):null;
        
        if($checkoutInfo == null){
            $request->session()->put('checkoutInfo', $object);
        }else{
            Session::forget('checkoutInfo');
            $request->session()->put('checkoutInfo', $object);
        }
        session(['url_prev' => url()->previous()]);
        $vnp_TmnCode = "6S7S6MCX"; //Mã website tại VNPAY
        $vnp_HashSecret = "HNAZYJVVCRYLGMKMZGCKZLAAEMIHECGD"; //Chuỗi bí mật
        $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "http://localhost/trucquach/return-vnpay";
        $vnp_TxnRef = date("YmdHis"); //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = "Thanh toán hóa đơn phí dich vụ";
        $vnp_OrderType = 'billpayment';
        $vnp_Amount = intval($total) * 100;
        $vnp_Locale = 'vn';
        $vnp_IpAddr = request()->ip();

        $inputData = array(
            "vnp_Version" => "2.0.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            // $vnpSecureHash = md5($vnp_HashSecret . $hashdata);
            $vnpSecureHash = hash('sha256', $vnp_HashSecret . $hashdata);
            $vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
        }

        return redirect($vnp_Url);
    }

    public function return(Request $request){
        $url = session('url_prev','/');

        if($request->vnp_ResponseCode == "00") {

            $checkoutInfo = Session::get('checkoutInfo');
            $checkoutInfo = json_decode($checkoutInfo);
            $require_date = Carbon::now();

            $id = $checkoutInfo->{'id'};
            $name = $checkoutInfo->{'name'};
            $email = $checkoutInfo->{'email'};
            $phone = $checkoutInfo->{'phone'};
            $address = $checkoutInfo->{'address'};
            $total = $checkoutInfo->{'total'};

            if($id == -1){
                $customer = new Customer;
                $customer->name = $request->input('name');
                $customer->email = $request->input('email');
                $customer->phone = $request->input('phone');
                $customer->address = $request->input('address');
                $customer->save();

                $order = new Order;
                $order->user_id = $customer->id;
                $order->require_date = $require_date;
                $order->total_money = intval($total);
                $order->status = 0;
                $order->save();

                $cart = Session::get('cart');
                foreach($cart->items as $key => $value){
                    $orderDetail = new OrderDetail;
                    $orderDetail->order_id = $order->id;
                    $orderDetail->product_id = $key;
                    $orderDetail->quantity = $value['qty'];
                    $orderDetail->price = ($value['price']/$value['qty']);
                    $orderDetail->save();

                    $product = DB::table('products')->where('id', $key)->first();
                    $remainingProductQuantity = $product->status - $value['qty'];
                    DB::table('products')->where('id', $key)->update(['status' => $remainingProductQuantity]);
                }

                Session::forget('cart');

                $order_success = Session::get('order_success');
                Session::put('order_success');
                return redirect('/check-out')->with('order_success','Đặt hàng thành công');
            }else{
                $order = new Order;
                $order->user_id = $id;
                $order->require_date = $require_date;
                $order->total_money = intval($total);
                $order->status = 0;
                $order->save();

                $cart = Session::get('cart');
                foreach($cart->items as $key => $value){
                    $orderDetail = new OrderDetail;
                    $orderDetail->order_id = $order->id;
                    $orderDetail->product_id = $key;
                    $orderDetail->quantity = $value['qty'];
                    $orderDetail->price = ($value['price']/$value['qty']);
                    $orderDetail->save();

                    $product = DB::table('products')->where('id', $key)->first();
                    $remainingProductQuantity = $product->status - $value['qty'];
                    DB::table('products')->where('id', $key)->update(['status' => $remainingProductQuantity]);
                }

                Session::forget('cart');

                $order_success = Session::get('order_success');
                Session::put('order_success');
                return redirect('/check-out')->with('order_success','Đặt hàng thành công');
            }
        }
        session()->forget('url_prev');
        $checkout_fail = Session::get('checkout_fail');
        Session::put('checkout_fail');
        return redirect('/')->with('checkout_fail', 'Lỗi trong quá trình thanh toán dịch vụ');
    }

    public function browseOrder($id){
        $order = DB::table('orders')->where('id', $id)->first();

        if($order->status == 0) {
            DB::table('orders')->where('id', $id)->update(['status' => 1]);
        } else {
            DB::table('orders')->where('id', $id)->update(['status' => 2]);
        }
            
        $browseOrder = Session::get('browseOrder');
        Session::put('browseOrder');

        return redirect()->back()->with('browseOrder','');
    }

    public function logout(){
        Auth::logout();
        return redirect()->route('home');
    }

    public function postRatingStar($userId, $productId, Request $request){
        $get_count_rating = DB::table('rating_stars')->where([['user_id', '=', $userId], ['product_id', '=', $productId]])->count();
        if ($get_count_rating >= 1){
            Session::put('message_error');
            return redirect()->back()->with('message_error', 'Bạn đã đánh giá rồi!');
        }else{
            $add_rating = new RatingStar();
            $add_rating->rating_star = $request->input('rating');
            $add_rating->user_id = $userId;
            $add_rating->product_id = $productId;
            $add_rating->save();
            Session::put('message_success');
            return redirect()->back()->with('message_success', 'Đã đánh giá SAO');
        }
    }

    public function addComment($userId, $productId, Request $request){
        $comment = new Comment();
        $comment->user_id = $userId;
        $comment->product_id = $productId;
        $comment->content = $request->input('comment');
        $comment->save();
        Session::put('comment_success');
        return redirect()->back()->with('comment_success', 'Bình luận thành công');
    }

    public function getProfile($userId){
        $user = DB::table('users')->where('id', $userId)->first();
        return view('customer.profile')->with([
            'user' => $user
        ]);
    }

    public function updateProfile($userId, Request $request){
        $update_user = User::find($userId);
        $update_user->name = $request->input('inputUsername');
        $update_user->email = $request->input('inputEmail');
        $update_user->phone = $request->input('inputPhone');
        $update_user->address = $request->input('inputAddress');

        if ($request->hasFile('fileInput')) {
            $file = $request->file('fileInput');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('img/avatar/'), $filename);
            $update_user->avatar = $filename;
        }

        $update_user->save();
        return redirect()->back()->with('update_success', 'Đã cập nhật');
    }

    public function changePassword($userId){
        $change_pass = User::find($userId);
        return view('customer.change_password', ['user'=>$change_pass]);
    }

    public function updatePassword($userId, Request $request)
    {
        $old_pass = $request->input('inputPassOld');
        $new_pass = $request->input('inputPassNew');
        $new_pass_confirm = $request->input('inputPassConfirmNew');

        $change = User::find($userId);

        $user = DB::table('users')->where('id', $userId)->first();
        if(password_verify($old_pass,$user->password)){
            if($new_pass == $new_pass_confirm){
                $change->password = bcrypt($request->input('inputPassConfirmNew'));
                $change->save();
                return redirect()->route('getProfile', $change->id)->with('change_password_successfully', 'Đổi mật khẩu thành công');
            }else{
                return redirect()->back()->with('change_password_user_fail', 'Xác nhận mật khẩu sai!');
            }
        }else{
            return redirect()->back()->with('old_pass_fail','Mật khẩu cũ sai!');
        }
    }

    public function searchProduct(Request $request){
        $keyWord = $request->input('keyWord');
        $products = DB::table('products')->where('name_product', 'LIKE', '%'.$keyWord.'%')->get();
        $count = DB::table('products')->where('name_product', 'LIKE', '%'.$keyWord.'%')->count();
        return view('customer.search')->with([
            'products' => $products,
            'count' => $count
        ]);
    }

    public function viewCategory($categoryId){
        $products = DB::table('products')->where('category_id', $categoryId)->get();
        $count = DB::table('products')->where('category_id', $categoryId)->count();
        return view('customer.search')->with([
            'products' => $products,
            'count' => $count
        ]);
    }

    public function revenue(){
        $orders = DB::table('orders')->get();
        return view('vendor.voyager.revenue.browse')->with([
            'orders' => $orders
        ]);
    }

    public function orderDetail($orderId){
        $order = DB::table('orders')->where('id', $orderId)->first();
        $customer = DB::table('users')->where('id', $order->user_id)->first();
        if(empty($customer)){
            $customer = DB::table('customers')->where('id', $order->user_id)->first();
        }
        $orderDetail = DB::table('order_details')->where('order_id', $orderId)->get();

        return view('vendor.voyager.orders.order_detail')->with([
            'orderDetail' => $orderDetail,
            'order' => $order,
            'customer' => $customer
        ]);
    }

}
