<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

// Default Route
Route::get('/', [ProductController::class, 'home'])->name('users.home');

// Product Routes
Route::resource('products', ProductController::class);

// Category Routes
Route::resource('categories', CategoryController::class);

// Product Detail Route
Route::get('/products/{id}', [ProductController::class, 'show'])->name('products.show');
