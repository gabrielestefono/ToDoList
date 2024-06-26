package com.todolist.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.todolist.interfaces.TaskDTO;
import com.todolist.models.Task;

@RestController
public class ToDoListController {

	public List<Task> taskList = new ArrayList<>();

	@GetMapping("")
	public List<Task> getOne(){
		return taskList;
	}

	@PostMapping("")
	public Task createOne(@RequestBody TaskDTO nome){
		Task newTask = new Task(nome.nome());
		taskList.add(newTask);
		return newTask;
	}
}
