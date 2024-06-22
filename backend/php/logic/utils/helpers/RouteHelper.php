<?php
require_once ROOT_PATH  . '../config/data.php';
require_once ROOT_PATH  . '../routes/Routes.php';

class RouteHelper{
    public static function route(){
        $uri = $_SERVER['REQUEST_URI'];

        $host = $_SERVER['HTTP_HOST'];

        $method = $_SERVER['REQUEST_METHOD'];

        $fullUrl = Data::SSL ? "https://$host$uri" : "http://$host$uri";

        $difference = str_replace(Data::BASE_URL, '', $fullUrl);

        $existe = false;

        $routes = Routes::handleRoutes();

        $routeFound = null;

        foreach($routes as $route){
            if($route->getUri() == $difference && $route->getHttpVerb() == $method){
                $existe = true;
                $routeFound = $route;
            }
        }

        if(!$existe){
		    header('Content-Type: application/json');
            echo json_encode(["mensagem" => "Erro 404!"]);
            die();
        }

        include_once ROOT_PATH  . '../logic/controllers/' . $routeFound->getController() . '.php';
        $controllerClass = $routeFound->getController();
        $controllerMethod = $routeFound->getMethod();

        if (class_exists($controllerClass) && method_exists($controllerClass, $controllerMethod)) {
            $controller = new $controllerClass();
            $controller->$controllerMethod();
            // TODO: Fazer as requisições retornarem AQUI com header ao invés de lá no controller
            // TODO: Pensar em uma forma de parsear o json pra passar pro controller só os dados prontos
            // TODO: Passar como um objeto
            // TODO: Talvez, verificar o que o método espera
        } else {
            echo "Erro 404! Controlador ou método não encontrado.";
        }
    }
}