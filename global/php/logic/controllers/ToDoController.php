<?php

include_once ROOT_PATH . '../logic/utils/classes/Task.php';
include_once ROOT_PATH . '../logic/utils/classes/helpers/controller/ControllerBase.php';

class ToDoController extends ControllerBase{
	public $taskList;

	public function __construct(){
		$this->taskList = [
			0 => new Task('Tarefa 01'),
			1 => new Task('Tarefa 02'),
			2 => new Task('Tarefa 03')
		];
	}

	public function index(){
		return $this->view('website.todolist', [
			'taskList' => $this->taskList
		]);
	}
}