<?php
require 'conexion.php';
sleep(1);
$usuarios = $mysqli->query("SELECT Nombre,TipoUsuario FROM usuarios WHERE Nombre='".$_POST['usuariolg']."' AND Contraseña ='".$_POST['passlg']."'");

if($usuarios->num_rows > 1):
	$datos=$usuarios->fetch_assoc();
	echo json_encode(array('error' => false , 'tipo' =>$datos['TipoUsuario'] ));
else:
	echo json_encode(array('error' => true));
endif;
$mysqli->close();
?>