<?php

include_once ROOT_PATH . '../interfaces/Task.php';

class ToDoController{
	public $taskList;

	public function __construct(){
		$this->taskList = [
			0 => new Task('Tarefa 01'),
			1 => new Task('Tarefa 02'),
			2 => new Task('Tarefa 03')
		];
	}

	public function index(){
		header('Content-Type: application/json');
		echo json_encode($this->taskList);
		die();
	}

	public function create(){
		header('Content-Type: application/json');
		$corpoRequisicao = file_get_contents('php://input');
		$dados = json_decode($corpoRequisicao, true);
		$task = new Task($dados['nome']);
		echo json_encode($task);
		die();
	}
}