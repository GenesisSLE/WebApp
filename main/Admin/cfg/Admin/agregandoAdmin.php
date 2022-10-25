<?php

$con = mysqli_connect("localhost","root","","Ejemplo");

    $nota = $_POST['nota'];
    $Tipo = $_POST['Tipo'];
    $pass = $_POST['contra'];


$sql = "INSERT INTO usuarios (Nombre, pass, TipoUsuario) VALUES ('$Nombre', '$pass', '1');";

$Insert=mysqli_query($con, $sql);
?>