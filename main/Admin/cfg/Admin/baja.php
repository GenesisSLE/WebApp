<?php
 session_start();
 $elusu = $_SESSION['usu'];
 var_dump($_SESSION['usu']);
 if($elusu == null || $elusu == '') {
   header("location:../../ErrorSession.php");
    die();
 }
 $conexion= mysqli_connect('localhost','root','','genesisdata');
?>

<!DOCTYPE html>

<html>
<head>
    <title>MENU ADMIN</title>
    <link rel="stylesheet" type="text/css" href="../../../css/styleHeader.css">
    <link rel="stylesheet" type="text/css" href="../../css/styleMenuAdmin.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">

    <meta charset="UTF-8">
</head>

<body>

<div class="header">
<div class="notificacion"><img  src="../../../../img/notificacion.png"></div>
<div class="usuario">
    <h2>ADMIN</h2>
    <div class = "icon">
        <img src = "../../../../img/user.png" width = "30px" height = "30px">
    </div>
</div>
</div>

<div class = "logo">
<img src = "../../../../img/logo1.png" width = "200px" height = "200px">
</div>

<div class= "usuarios">
<table class= "tusuarios">
<tr>
<td>Nombre</td>
<td>Gmail</td>
<td>Contraseña</td>
</tr>
<?php 
$sql="SELECT * from usuarios";
$result=mysqli_query($conexion,$sql);
while($mostrar=mysqli_fetch_array($result)){
    ?>
<tr>
<td><?php echo $mostrar['Nombre'] ?></td>
<td><?php echo $mostrar['pass'] ?></td>
<td><?php echo $mostrar['TipoUsuario'] ?></td>
<td><?php  ?></td>
</tr>
<?php
}
?>
</table>

</div>

</body>

</html>