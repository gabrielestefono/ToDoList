<?php

class ControllerBase{
    public function view(string $nome, array $dados = []){
        $nomeSemPontos = str_replace(".", "/", $nome);
        $nomeArquivo = ROOT_PATH . '../templates/' . $nomeSemPontos . '.php';
        if (file_exists($nomeArquivo)){
            extract($dados);
            return include_once $nomeArquivo;
        }
        die('Arquivo não existe!');
    }
}