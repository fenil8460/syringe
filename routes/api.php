<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\NurshingController;

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

Route::get('/job-category/{slug}', [NurshingController::class,'index'])->name('jobCategory');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
