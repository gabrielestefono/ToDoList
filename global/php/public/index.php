<?php define('ROOT_PATH', realpath(dirname(__FILE__)) . "/"); ?>
<?php require_once '../logic/utils/classes/helpers/RouteHelper.php';?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/app.css">
</head>
<body>
    <?php RouteHelper::route();?>
</body>
</html>
