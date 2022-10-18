<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menú</title>
            <link rel="stylesheet" href="css/stylenotasform.css">
            <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
</head>

<body id="body">
            <div class="previewcntrform">
                <div class = "campo">
                    <div class = "tipos">
                        <span class="tipo">Tipo</span>
                        <span class="nota">Nota</span>
                    </div>
            

                    <form method = "post" class="formulario">
                        <div class="formtipo">
                            <input type="radio" name="check1" required placeholder="Tipo">
                            <input type="radio" name="check1" required placeholder="Tipo">
                        </div>
                        
                        <div class = "divnota">
                            <input class="formnota" type="number" name="nota" min="1" max="12">
                        </div>
                    </form>
                </div>

                <div class= "btnguardar">
                    <img src="img/disquete.png" height="100%" width="100%">
                </div>

                <div class = "txttipodenota">
                    <p>T P</p>
                </div>
            </div>

<script src="app.js"></script>
</body>
</html>