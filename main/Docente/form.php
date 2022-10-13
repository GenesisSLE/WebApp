<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menú</title>
            <link rel="stylesheet" href="css/style.css">
            <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
</head>

<body id="body">
<div class = "cntrform">
                <div class="previewcntrform">
                    <div class = "tipos">
                        <span class="tipo">Tipo</span>
                        <span class="fecha">Fecha</span>
                        <span class="nota">Nota</span>
                    </div>
                </div>

                <div class="formulario">
                    <form method = "post">
                        <input class="formtipo" type="radio" name="check1" required placeholder="Tipo">
                        <input class="formtipo" type="radio" name="check1" required placeholder="Tipo">
                        <input class="formnota" type="number" name="nota" min="1" max="12" required placeholder="Nota">
                    </form>
                </div>
</div>

<script src="app.js"></script>
</body>
</html>