<?php
$mysqli = new mysqli('localhost', 'genesis', 'genesis', 'genesis_sle');
if($mysqli->connect_errno):
    echo "Error al conectarse con base de datos".$mysqli->connect_error;
endif;
?>