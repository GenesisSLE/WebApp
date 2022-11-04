$(document).ready(function(){

getAll();

  
function getAll(){
    
        $.ajax({
    url: 'Pruebaphp.php',
            type: 'POST',
            data: {
                res: 1
            },
        success: function(response){
             $('#data').html(response);
                let Alumnos = JSON.parse(response);
                
                
               
                console.log(Alumnos);
               
                console.log(Alumnos[0].PrimerNombre);

                for (var i = 0; i < Alumnos.length ; i++) {
                var cedula=Alumnos[i].NumeroDeLista;
                
                if(Alumnos[i].PrimerApellido==null){Alumnos[i].PrimerApellido=' '};
                let ret = '<div class="contengoTodoAlumno">'+
                '<div class="container">'+ 
           '<img class="imagen" src="img/Persona2.png" onclick="GuardoAlumnoYredirecciono('+Alumnos[i].NumeroDeLista+')">'+         
             '<div class="nombre">'+
                    '<h1 class="nombrecito">'+Alumnos[i].PrimerNombre+' '+Alumnos[i].PrimerApellido+'</h1>'+
                '</div>'+
                '<div class="mas">'+
                    '<img onclick="Prueba()"class="mas2" src="img/simbolo mas.png"/>'+
                '</div>'+
                '<div class="triangulo">'+
                    '<img class="triangulito" onclick="InfoEspecifica()" src="img/triangulo.png"/>'+
                '</div>'+
                '</div>'+
                '<div class="DatosEspecificos"id="DatosEspecificos"style="display=none">'+
   '<h1 style="font-size: 15px;margin-left:4px;">Nombre completo</h1>'+
                    '<div class="nombreCompleto"><h1>Santiago Soto Emanuel Salgueiros</h1></div>'+
'<div class="lineawadw"></div>'+
'<div class="Promedio"><h1 style="font-size: 15px;margin-left:4px;">Promedio:</h1><h1 style="font-size: 15px;margin-left:215px;margin-top: -20px;">7</h1></div>'+
     '</div>'+
'<div class="previewcntrform" id="NotasAlumno">'+
                '<div class = "campo">'+
                    '<div class = "tipos">'+
                        '<span class="tipo">Tipo</span>'+
                        '<span class="nota">Nota</span>'+
                    '</div>'+
                    '<form method = "post" class="formulario" name="FormularioNotas">'+
                        '<div class="formtipo">'+
                            '<input type="radio" name="check1"  value="Teorico">'+
                            '<input type="radio" name="check1"  value="Practico">'+
                       '</div>'+
                        '<div class = "divnota">'+
                           ' <input id="Nota"class="formnota" type="number" name="nota" min="1" max="12">'+
                       ' </div>'+
                     '<input type="button" name="" class= "btnguardar" onclick="obtenerNotas()">'+
                    '</form>'+
                '</div>'+
                '</div>';

                             
               
            
                     $('#cont').append(ret);
               
                  }

               

            }
            
        })
    }
    
});