<?php 
    define('ROOT_PATH', realpath(dirname(__FILE__)) . "/");
    require_once ROOT_PATH . '../logic/utils/helpers/RouteHelper.php';
    RouteHelper::route();