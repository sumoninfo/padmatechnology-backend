<?php

use App\Http\Controllers\Admin\AmenityController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\BookingController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\RoomController;
use Illuminate\Support\Facades\Route;

//Route::post('admin/register', [AuthController::class, 'register']);
Route::post('admin/login', [AuthController::class, 'login']);

// authenticated staff routes here
Route::group(['prefix' => 'admin', 'middleware' => ['auth:admin-api', 'scopes:admin']], function () {
    Route::get('/auth', [AuthController::class, 'getAuthData']);
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::get('/dashboard', DashboardController::class);

    Route::apiResources(['amenities' => AmenityController::class]);
    Route::apiResources(['rooms' => RoomController::class]);
    Route::apiResources(['customers' => CustomerController::class]);


    //Orders
    Route::post('/status-update/{booking}/{status}', [BookingController::class, 'bookingStatusUpdate']);
    Route::get('/bookings', [BookingController::class, 'getBookings']);
    Route::get('/bookings/{booking}', [BookingController::class, 'show']);
    //admin profile
    Route::get('/profile/{admin}', [ProfileController::class, 'show']);
    Route::put('/profile/{admin}', [ProfileController::class, 'update']);
});
