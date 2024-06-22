<?php

namespace App\Utils;

class Task{
    private string $nome;

    private bool $concluida;

    public function __construct(string $nome){
        $this->nome = $nome;
        $this->concluida = false;
    }
    
    public function getNome(): string {
        return $this->nome;
    }

    public function setNome(string $nome): void {
        $this->nome = $nome;
    }

    public function getConcluida(): bool {
        return $this->concluida;
    }

    public function setConcluida(bool $concluida): void {
        $this->concluida = $concluida;
    }
}