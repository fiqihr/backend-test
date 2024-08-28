<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\BrandController;

Route::controller(RegisterController::class)->group(function(){
    Route::post('register', 'register');
    Route::post('login', 'login');
});

// menyimpan route ke dalam middleware
Route::middleware('auth:sanctum')->group(
    function () {
        Route::resource('products', ProductController::class);
        Route::resource('brands', BrandController::class);
        Route::post('logout', [RegisterController::class, 'logout']);
    }
);