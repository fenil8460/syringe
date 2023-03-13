<?php

use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\JobCategoryController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', HomeController::class);

Route::get('/job-category/{slug}', JobCategoryController::class)->name('jobCategory');
