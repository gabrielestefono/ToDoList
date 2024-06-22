<?php

namespace App\View\Components;

use App\Utils\Task as UtilsTask;
use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Task extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct(public UtilsTask $task){}

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.task', [
            'task' => $this->task
        ]);
    }
}
