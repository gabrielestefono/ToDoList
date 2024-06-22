<?php

class Task{
	private string $nome;

	private bool $concluida;

	public function __construct($nome) {
        $this->nome = $nome;
        $this->concluida = false;
    }

	public function getNome(): string
	{
		return $this->nome;
	}

	public function setNome($nome): void
	{
		$this->nome = $nome;
	}

	public function getConcluida(): bool
	{
		return $this->concluida;
	}

	public function setConcluida($concluida): void
	{
		$this->concluida;
	}
}