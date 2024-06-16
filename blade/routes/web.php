<?php

use App\Http\Controllers\ToDoListController;
use Illuminate\Support\Facades\Route;

Route::get('/', [ToDoListController::class, 'listAll'])->name('task.listAll');