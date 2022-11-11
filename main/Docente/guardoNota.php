<?php

$nota= $_POST['nota'];
$tipo= $_POST['tipo'];

require_once 'conexion.php';
$query = "INSERT into Trabaja (cedEst,idCursa,anoCursa,idGrupo,idMat,tipo,nota) values (14,2,'2022-01-01 00:00:00',2,2,'Oral','$nota');";
mysqli_query($conn, $query);
?>