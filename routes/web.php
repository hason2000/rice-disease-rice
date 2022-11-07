<?php

use App\Http\Controllers\RiceController;
use App\Http\Controllers\RiceQuestionController;
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

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', [\App\Http\Controllers\RiceController::class, 'index'])->name('form_way');
Route::post('/', [RiceController::class, 'process'])->name('form_way');
Route::get('/question',[\App\Http\Controllers\RiceQuestionController::class, 'index'])->name('question_way');
Route::post('/question', [RiceQuestionController::class, 'signalQuestion'])->name('question_way_post');
Route::post('/question-signal', [\App\Http\Controllers\RiceQuestionController::class, 'questionSignal'])->name('question_signal');
Route::get('/diseases/{name}', [RiceController::class, 'viewDisease'])->name('view_disease');
