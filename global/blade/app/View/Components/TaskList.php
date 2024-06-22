<?php

namespace App\View\Components;

use App\Utils\Task;
use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class TaskList extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct(public $taskList){}

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.task-list',[
            'tasklist' => $this->taskList
        ]);
    }
}
