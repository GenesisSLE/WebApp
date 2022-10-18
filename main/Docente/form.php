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
            

                    <form method = "post" class="formulario" name="FormularioNotas">
                        <div class="formtipo">
                            <input type="radio" name="check1"  value="Teorico">
                            <input type="radio" name="check1"  value="Practico">
                        </div>
                        
                        <div class = "divnota">
                            <input id="Nota"class="formnota" type="number" name="nota" min="1" max="12">
                        </div>
                     <input type="button" name="" class= "btnguardar" onclick="obtenerNotas()">
                    
                
                    </form>
                </div>

                

                <div class = "txttipodenota">
                    <p>T P</p>
                </div>
            </div>

            <div class="notasform">
                <div class = "campo1">
                    <div class = "tipos1">
                        <span class="fecha">Enero</span>
                    </div>
                </div>

                    <div class = "txttiposde">
                        <span class="tipo1">Tipo</span>
                        <span class="fecha1">Fecha</span>
                        <span class="nota1">Nota</span>
                    </div>

                
            <div class = "filas">
                <div class = "txttipodenota1">
                    <p>T P</p>
                </div>

                <div class = "txtfecha">
                    <p>22/10</p>
                </div>

                <div class = "txtnota">
                    <p>12</p>
                </div>
            </div>

            <div class = "filas1">
                <div class = "txttipodenota1">
                    <p>T P</p>
                </div>

                <div class = "txtfecha">
                    <p>22/10</p>
                </div>

                <div class = "txtnota">
                    <p>12</p>
                </div>
            </div>

            <div class = "filas2">
                <div class = "txttipodenota1">
                    <p>T P</p>
                </div>

                <div class = "txtfecha">
                    <p>22/10</p>
                </div>

                <div class = "txtnota">
                    <p>12</p>
                </div>
            </div>

            <div class = "filas3">
                <div class = "txttipodenota1">
                    <p>T P</p>
                </div>

                <div class = "txtfecha">
                    <p>22/10</p>
                </div>

                <div class = "txtnota">
                    <p>12</p>
                </div>
            </div>

            <div class = "filas4">
                <div class = "txttipodenota1">
                    <p>T P</p>
                </div>

                <div class = "txtfecha">
                    <p>22/10</p>
                </div>

                <div class = "txtnota">
                    <p>12</p>
                </div>
            </div>

            <div class = "filas5">
                <div class = "txttipodenota1">
                    <p>T P</p>
                </div>

                <div class = "txtfecha">
                    <p>22/10</p>
                </div>

                <div class = "txtnota">
                    <p>12</p>
                </div>
            </div>
            </div>

<script src="js/js.js"></script>
</body>
</html>