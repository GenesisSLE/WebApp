<?php

$nota= $_POST['nota'];
$tipo= $_POST['tipo'];
$fecha= $_POST['fecha'];
require_once 'conexion.php';
$query = "INSERT into  Trabaja (cedEst,idCursa,anoCursa,idMat,idGrupo,tipo,nota) values (14,2,'$fecha',2,2,'$tipo','$nota');";

	mysqli_query($conn, $query);
?>