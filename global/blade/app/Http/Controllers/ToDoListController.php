<?php

namespace App\Http\Controllers;

use App\Utils\Task;
use Illuminate\Contracts\View\View;

class ToDoListController extends Controller
{
    private $taskList;

    public function __construct()
    {
        $this->taskList = [
            0 => new Task('Tarefa 01'),
            1 => new Task('Tarefa 02'),
            2 => new Task('Tarefa 03'),
            3 => new Task('Tarefa 04')
        ];
    }
    public function listAll(): View
    {
        return view("website.todolist", [
            'taskList' => $this->taskList
        ]);
    }
}
