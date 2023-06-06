<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/regUser',[App\Http\Controllers\UserController::class, 'create'])->name('regUser');

Route::post('/login',[UserController::class,'login']);

Route::post('/addPro',[ProductController::class,'store']);

Route::post('/displayPro',[ProductController::class,'show']);

Route::get('/displayAll',[ProductController::class,'showAll']);

Route::post('/test',[ProductController::class, 'test']);

Route::post('/delete',[ProductController::class, 'delete']);

Route::get('/catSearch',[ProductController::class, 'searchCategory']);



