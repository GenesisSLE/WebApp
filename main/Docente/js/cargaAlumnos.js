$(document).ready(function(){

getAll();
console.log("hola");
function getAll(){
        $.ajax({
    url: 'listar.php',
            type: 'POST',
            data: {
                res: 1
            },
        success: function(response){
             $('#data').html(response);
                let Alumnos = JSON.parse(response);
                console.log(Alumnos[0].PrimerNombre);
                let ret = '<div class="container">'+
          '<a href="Detalles del alumno.php">'+
           '<img class="imagen" src="img/persona.jpg"/>'+
            '</a>'+
             '<div class="nombre">'+
                    '<h1 class="nombrecito">Santiago Soto</h1>'+
                '</div>'+
                '<div class="mas">'+
                    '<img onclick="Prueba()"class="mas2" src="img/simbolo mas.png"/>'+
                '</div>'+
                '<div class="triangulo">'+
                    '<img class="triangulito" onclick="InfoEspecifica()" src="img/triangulo.png"/>'+
                '</div>'+
                '</div>';                
               
                
                   $('#cont').append(ret);

               

            }
        })
    }
});