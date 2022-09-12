<!DOCTYPE html>

<html>
<head>
    <title>Creacion de admin</title>
    <link rel="stylesheet" type="text/css" href="../../../css/styleHeader.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
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

<div class = "formulario">
        <form action="agregandoAdmin.php"id="formaltausr" method = "post">
            <input class="Nombre" type="text" name="NombreA" placeholder="Nombre"><br>
            <input class="Gmail" type="text" name="GmailA" placeholder="Gmail">
            <input type="password" name="contra" placeholder="Contraseña">
            <input type="submit" name="botonlg"class="botonEnviar"value="Agregar admin">
        </form>
</div>

</body>

</html>
