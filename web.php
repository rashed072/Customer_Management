<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\CustomerController;
use Illuminate\Http\Request;
use App\Models\Customer;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/',function()
{
    return view('index');

});
Route::get('/register',[RegistrationController::class,'index']);
Route::post('/register',[RegistrationController::class,'register']);
Route::get('/customer',[CustomerController::class,'create']);
Route::get('/customer/view',[CustomerController::class,'view'])->name('customer.view');
Route::get('/customer/delete/{id}',[CustomerController::class,'delete'])->name('customer.delete');
Route::get('/customer/forceDelete/{id}',[CustomerController::class,'forceDelete'])->name('customer.forceDelete');
Route::get('/customer/restore/{id}',[CustomerController::class,'restore'])->name('customer.restore');
Route::get('/customer/edit/{id}',[CustomerController::class,'edit'])->name('customer.edit');
Route::post('/customer/update/{id}',[CustomerController::class,'update'])->name('customer.update');
Route::post('/customer',[CustomerController::class,'store']);
Route::get('/customer/trash',[CustomerController::class,'trash']);
Route::get('get-all-session',function(){
    $session=session()->all();
    p($session);
});
Route::get('set-session',function(Request $request)
{
$request->session()->put('user_name','Sarah Sharif');
$request->session()->put('user_id','20');
$request->session()->flash('status','Success');

return redirect('get-all-session');
});
Route::get('destroy-session',function(){
    session()->forget(['user_name','user_id']);
    //session()->forget('user_id');
    return redirect('get-all-session');
});
//Route::get('/customer/view',[CustomerController::class,'view']);
//Route::get('/customer/delete/{id}',[CustomerController::class,'delete'])->name('customer.delete');