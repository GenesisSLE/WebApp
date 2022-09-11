<?php
 session_start();
 $elusu = $_SESSION['usu'];
 var_dump($_SESSION['usu']);
 if($elusu == null || $elusu == '') {
   header("location:../../ErrorSession.php");
    die();
 }
?>
<!DOCTYPE html>

<html>
<head>
    <title>MENU ADMIN</title>
    <link rel="stylesheet" type="text/css" href="../css/styleHeader.css">
    <link rel="stylesheet" type="text/css" href="css/styleMenuAdmin.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    
    <meta charset="UTF-8"> 
</head>

<body>
<div class="header">
<div class="notificacion"><img  src="../../img/notificacion.png"></div>
<div class="usuario">
    <h2>Admin</h2>
    <div class = "icon">
        <img src = "../../img/user.png" width = "30px" height = "30px">
        <div class="btnCerrarSesion">
           <a href="../../index.php"><img alt="CerrarSesion"width = "33px" height = "33px"src="../../img/cerrar-sesion.png"></a>
        </div>
    </div>
</div>
</div>

<div class = "logo">
<img src = "../../img/logo1.png" width = "200px" height = "200px">
</div>
<div class="cont">
    <div class="dropdown">
    <button class="dropbtn">Alumno</button>
    <div class="dropdown-content" style="left:0;">
        <a href="cfg/Alumno/alta.php">Alta</a>
        <a href="cfg/Alumno/baja.php">Baja</a>
        <a href="cfg/Alumno/mod.php">Modificación</a>
    </div>
</div>
</div>

</body>

</html>