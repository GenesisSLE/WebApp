<?php
session_start();
require 'conexion.php';
sleep(3);
$_SESSION['usu'] = $_POST['usuariolg'];
$usuarios = $mysqli->query("SELECT Nombre, TipoUsuario FROM usuarios WHERE Nombre='".$_POST['usuariolg']."' AND pass ='".$_POST['passlg']."'");
if($usuarios->num_rows > 1):
	$datos=$usuarios->fetch_assoc();
	echo json_encode(array('error' => false , 'tipo' => $datos['TipoUsuario'] ));
else:
	echo json_encode(array('error' => true));
endif;
$mysqli->close();
?>