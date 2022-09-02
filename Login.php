<!DOCTYPE html>
<?php
 if(isset($_POST['submit'])){
    $nombre =$_POST['nombre'];
     $Contra =$_POST['contraseña'];
    
 }
?>

<html>
<head>
    <title>a</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="UTF-8"> 
</head>
<body>


<div class ="login">

<div class="logo"> <img class="classLogo"src="img/logo1.png"> </div>

    <div class ="form">
        <form action=""method="post">
            <input type="text" name="nombre" placeholder="Usuario"><br>
            <input type="password" name="contraseña" placeholder="Contraseña">
            <input class="BtLogin"type="submit" name="submit" value="Entrar">
             <?php
            include("ValidandoUsuarios.php");
            ?>
            </form>
            
    </div>
</div>


</body>
</html>