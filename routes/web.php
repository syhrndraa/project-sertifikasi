<?php

use App\Http\Controllers\PostController;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;
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

Route::get('/', function () {
    return view('home', [
        'title' => 'Home'
    ]);
});

Route::get('/about', function () {
    return view('about', [
        'title' => 'About'
    ]);
});

Route::get('/posts', [PostController::class, 'index']);

Route::get('/posts/{post:slug}', [PostController::class, 'show']); //mennggunakan route model bundling

Route::get('/categories', function () {
    return view('categories', [
        'title' =>"Post Categories",
        'categories' => Category::all()
    ]);
});

Route::get('/categories/{category:slug_cat}', function (Category $category) {
  return view('posts', [
      'title' => "Post by Category : $category->category",
      'posts' => $category->posts->load('category', 'author')
  ]);  
});

Route::get('/author/{auth:username}', function (User $auth) {
    return view('posts', [
        'title' => "Post by Author : $auth->name",
        'posts' => $auth->posts->load('category', 'author')
    ]);  
});