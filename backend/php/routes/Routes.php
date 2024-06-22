<?php
require_once '../logic/utils/helpers/Route.php';
require_once '../logic/utils/interfaces/HttpMethod.php';

class Routes{
    public function __construct(){}

    public static function handleRoutes(){
        return array(
            new Route('ToDoController', 'index', HttpMethod::GET, '/'),
            new Route('ToDoController', 'create', HttpMethod::POST, '/'),
        );
    }
}