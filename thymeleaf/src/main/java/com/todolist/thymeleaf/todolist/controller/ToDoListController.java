package com.todolist.thymeleaf.todolist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ToDoListController {

	@GetMapping("")
	public String toDoList() {
		return "website/todolist";
	}
}
