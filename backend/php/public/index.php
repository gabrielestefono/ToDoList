<?php
// index.php

header("Content-Type: application/json");

$requestMethod = $_SERVER["REQUEST_METHOD"];

switch ($requestMethod) {
    case 'GET':
        handleGetRequest();
        break;
    case 'POST':
        handlePostRequest();
        break;
    case 'PUT':
        handlePutRequest();
        break;
    case 'DELETE':
        handleDeleteRequest();
        break;
    default:
        echo json_encode(["message" => "Método não suportado"]);
        break;
}

function handleGetRequest() {
    echo json_encode(["message" => "Hello World!"]);
}

function handlePostRequest() {
    echo json_encode(["message" => "Requisição POST recebida"]);
}

function handlePutRequest() {
    echo json_encode(["message" => "Requisição PUT recebida"]);
}

function handleDeleteRequest() {
    echo json_encode(["message" => "Requisição DELETE recebida"]);
}
?>
