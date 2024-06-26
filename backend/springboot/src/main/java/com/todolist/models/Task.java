package com.todolist.models;

public class Task{
	private String nome;

	private Boolean concluida;

	public Task(String nome) {
		this.nome = nome;
		this.concluida = false;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Boolean getConcluida() {
		return concluida;
	}

	public void setConcluida(Boolean concluida) {
		this.concluida = concluida;
	}
}
