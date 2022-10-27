<?php

try {

    $conexion = new PDO("mysql:host=localhost;port=3306;dbname=genesis_sle", "genesis", "genesis");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

    $res = $conexion->query(" SELECT A.nombre, G.grado, G.orientacion from controladoPor C
join Profesor P on C.cedProf = P.cedProf
join Cursa Cu on C.idCursa = Cu.idCursa
join Asignatura A on C.idMat = A.idMat
join Grupo G on G.idGrupo = C.idGrupo") or die(print($conexion->errorInfo()));

    $data = [];

    while($item = $res->fetch(PDO::FETCH_OBJ)) {

        $data[] = [
            'nombre' => $item->nombre,
            'grado' => $item->grado,
            'orientacion' => $item->orientacion
           
        ];

    }

    echo json_encode($data);

} catch(PDOException $error) {

    echo $error->getMessage();
    die();

}
?>