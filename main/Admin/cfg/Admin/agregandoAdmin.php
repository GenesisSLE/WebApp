<?php

$con = mysqli_connect("localhost","root","","genesisdata");

    $Nombre = $_POST['NombreA'];
    $Gmail = $_POST['GmailA'];
    $pass = $_POST['contra'];


$sql = "INSERT INTO usuarios (Nombre, pass, TipoUsuario) VALUES ('$Nombre', '$pass', '1');";

$Insert=mysqli_query($con, $sql);
 
if($Insert)
 
{
 
echo "Contact Records Inserted";
 
}
?>