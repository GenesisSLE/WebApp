<?php
    $db = new mysqli('localhost', 'root', '', 'prueba1');

    $consulta = $db -> query('SELECT nombre from libreta');

    $userData = $consulta -> fetch_assoc();
    $datos['result'] = $userData;

    echo json_encode($datos);
?>