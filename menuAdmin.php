
<!DOCTYPE html>

<html>
<head>
    <title>a</title>
    <link rel="stylesheet" type="text/css" href="css/styleHeader.css">
     <link rel="stylesheet" type="text/css" href="css/styleMenuAdmin.css">
    <meta charset="UTF-8"> 
</head>
<body>
<div class="header">
<div class="notificacion"><img  src="img/notificacion.png"></div>
<div class="usuario"><div class="linea"> <img width:"45px" height="45px""img/user.png"> </div></div>
</div>
<div class="menuAdmin">
<div class="TituloMenu"><h1>Opciones</h1></div>
<div class="lineaMenu"></div>
<div class="formAdmin">
  <form action="RedirigirAdmin.php"method="post">
            <input type="text" name="nombre" placeholder="Usuario"><br>
            <input type="password" name="contrasena" placeholder="Contraseña">
            <input class="BtLogin"type="submit" name="submit" value="Entrar">
            
            </form>
            


</div>
</div>
</body>
</html>