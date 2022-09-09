<?php
$mysqli = new mysqli('localhost','root','','genesisdata');
if($mysqli->connect_errno):
    echo "Error al conectarse con base de datos".$mysqli->connect_error;
endif;
?>