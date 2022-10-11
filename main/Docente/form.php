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
                        <h4 class="tipo">Tipo</h4><h4 class="fecha">Fecha</h4><h4 class="nota">Nota</h4>
                    </div>
                </div>

                <div class="formulario">
                    <form method = "post">
                        <input class="formtipo" type="radio" name="tipo" required placeholder="Tipo">
                        <input class="formtipo" type="radio" name="tipo1" required placeholder="Tipo">
                        <input class="formnota" type="number" name="nota" min="1" max="12" required placeholder="Nota">

                        <label>
    <input type="checkbox" class="radio" value="1" name="fooby[2][]" />Tiger</label>
  <label>
    <input type="checkbox" class="radio" value="1" name="fooby[2][]" />Sloth</label>
  <label>
    <input type="checkbox" class="radio" value="1" name="fooby[2][]" />Cheetah</label>
</div>
                    </form>
                </div>
</div>

</body>
</html>