<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post('/auth/login', 'App\Http\Controllers\Api\AuthController@login');

Route::prefix('v1')->middleware('auth:sanctum')->group(function () {
    Route::get('/me', function (Request $request) {
        return $request->user();
    });
});

