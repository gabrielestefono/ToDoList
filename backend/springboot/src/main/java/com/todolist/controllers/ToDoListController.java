package com.todolist.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ToDoListController {

	@GetMapping("")
	public String index(){
		return "Hello World!";
	}
}
