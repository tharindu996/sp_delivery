<?php

use App\Http\Controllers\BaseController;
use App\Http\Controllers\DeliveryRequestController;
use Illuminate\Support\Facades\Route;

Route::middleware(['throttle:15,1'])->group(function () {
    Route::get('/', [BaseController::class, 'index'])->name('index');
});
Route::patch('/delivery-requests/{delivery_request}/cancel', [DeliveryRequestController::class, 'cancel'])->name('delivery-requests.cancel');
Route::resource('delivery-requests', DeliveryRequestController::class)->only(['index', 'create', 'store']);
