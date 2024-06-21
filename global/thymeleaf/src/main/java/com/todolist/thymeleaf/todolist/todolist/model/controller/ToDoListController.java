package com.todolist.thymeleaf.todolist.todolist.model.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.todolist.thymeleaf.todolist.todolist.model.entity.Task;

@Controller
public class ToDoListController {

	private final List<Task> taskList = new ArrayList<>(Arrays.asList(
		new Task("Tarefa 01", true),
		new Task("Tarefa 02", false),
		new Task("Tarefa 03", true),
		new Task("Tarefa 04", false)
	));

	@GetMapping("")
	public String findAll(Model model) {
		model.addAttribute("taskList", taskList);
		return "website/todolist";
	}

	@PostMapping("")
	public String createOne(Model model, @RequestParam("task") String taskName) {
		Task task = new Task(taskName, false);
		taskList.add(task);
		return this.findAll(model);
	}
}
