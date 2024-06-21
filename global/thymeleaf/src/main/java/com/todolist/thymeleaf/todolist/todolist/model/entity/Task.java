package com.todolist.thymeleaf.todolist.todolist.model.entity;

public class Task {
	private String name;

    private Boolean concluida;

    public Task(String name, Boolean concluida) {
        this.name = name;
        this.concluida = concluida;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getConcluida() {
        return concluida;
    }

    public void setConcluida(Boolean concluida) {
        this.concluida = concluida;
    }
}
