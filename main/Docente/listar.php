<?php

try {

    $conexion = new PDO("mysql:host=localhost;port=3306;dbname=genesisdata", "root", "");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

    $res = $conexion->query('SELECT * FROM libretas') or die(print($conexion->errorInfo()));

    $data = [];

    while($item = $res->fetch(PDO::FETCH_OBJ)) {

        $data[] = [
            'Nombre' => $item->Nombre,
            'Grado' => $item->Grado,
            'Curso' => $item->Curso
           
        ];

    }

    echo json_encode($data);

} catch(PDOException $error) {

    echo $error->getMessage();
    die();

}
?>