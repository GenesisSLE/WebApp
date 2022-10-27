document.getElementById('ocultando').style.display='none';

$(document).ready(function(){
    var id;

$("ocultando").addClass("hidden");

var contador=0;

    getAll();

            
    function getAll(){
        $.ajax({

            url: 'infoLista.php',
            type: 'POST',
            data: {
                res: 1
            },
            success: function(response){
        pasandolista = JSON.parse(response);

            $('#nombreAlumno').html(pasandolista[contador].PrimerNombre);
            $('#nroLista').html(pasandolista[contador].NumeroDeLista);

            }
        })

    }
 
   
   
        });
    var pasandolista;
     console.log(pasandolista);
       
            console.log(pasandolista[contador+1].PrimerNombre);

            var alumnosPresentes =new Array();
            var alumnosFaltantes =new Array();
            var alumnosLlegaTarde =new Array(); 
            var contador=0;
        

function Falta(){

    if(contador<pasandolista.length){

           console.log(contador);
                console.log(pasandolista.length);
                alumnosFaltantes.push(pasandolista[contador].CedulaEstudiante);
                
                $('#nombreAlumno').html(pasandolista[contador+1].PrimerNombre);
                $('#nroLista').html(pasandolista[contador+1].NumeroDeLista);
                var modulo='<div class="pasajeListo">'+
                '<h1 style="font-size: 15px;font-weight: bold; position: relative;left: 15px;top: 5px;">Nro de lista</h1>'+
                '<h1 style="font-size: 15px; font-weight: bold;position: relative;left: 175px;top: -10px; width:200px;">Nombre completo</h1>'+
                '<h1 style="font-size: 15px; font-weight: bold;position: relative;left: 780px;top: -26px; width:55px;">Estado</h1> '+
                '<h1 style="font-size:20px;font-weight: bold; width: 50px; position:relative;top:-22px; left: 47px;" >'+pasandolista[contador].NumeroDeLista+'</h1>'+
                '<h1 style="font-size:18px; width: 400px; position:relative;top:-46px; left: 174px;" >'+pasandolista[contador].PrimerNombre+'</h1>'+
                '<div style="width: 300px;height: 26px;position: relative;top: -70px;right: -780px;background-color:#db2727;border-radius: 10px;"></div>'+
                '</div>';
                $('#cont').append(modulo);
				contador++;
            }else{
                document.getElementById('ocultando').style.display=rotate('-90deg');
            }
            };
function Presente(){

if(contador<(pasandolista.length)){   
                alumnosPresentes.push(pasandolista[contador].CedulaEstudiante);
                
                 
              $('#nombreAlumno').html(pasandolista[contador+1].PrimerNombre);
                $('#nroLista').html(pasandolista[contador+1].NumeroDeLista);
                 var modulo=
                '<div class="pasajeListo">'+
                '<h1 style="font-size: 15px;font-weight: bold; position: relative;left: 15px;top: 5px;">Nro de lista</h1>'+
                '<h1 style="font-size: 15px; font-weight: bold;position: relative;left: 175px;top: -10px; width:200px;">Nombre completo</h1>'+
                '<h1 style="font-size: 15px; font-weight: bold;position: relative;left: 780px;top: -26px; width:55px;">Estado</h1> '+
                '<h1 style="font-size:20px;font-weight: bold; width: 50px; position:relative;top:-22px; left: 47px;" >'+pasandolista[contador].NumeroDeLista+'</h1>'+
                '<h1 style="font-size:18px; width: 400px; position:relative;top:-46px; left: 174px;" >'+pasandolista[contador].PrimerNombre+'</h1>'+
                '<div style="width: 300px;height: 26px;position: relative;top: -70px;right: -780px;background-color:#24ab29;border-radius: 10px;"></div>'
                '</div>'
                $('#cont').append(modulo)
				contador=contador+1;
				console.log(contador);
}else{
document.getElementById('ocultando').style.display='';}
            };
               function LlegaTarde(){
    if(contador<(pasandolista.length)){
                alumnosLlegaTarde.push(pasandolista[contador].CedulaEstudiante);
               
                $('#nombreAlumno').html(pasandolista[contador+1].PrimerNombre);
                $('#nroLista').html(pasandolista[contador+1].NumeroDeLista);
                 var modulo=
                '<div class="pasajeListo">'+
                '<h1 style="font-size: 15px;font-weight: bold; position: relative;left: 15px;top: 5px;">Nro de lista</h1>'+
                '<h1 style="font-size: 15px; font-weight: bold;position: relative;left: 175px;top: -10px; width:200px;">Nombre completo</h1>'+
                '<h1 style="font-size: 15px; font-weight: bold;position: relative;left: 780px;top: -26px; width:55px;">Estado</h1> '+
                '<h1 style="font-size:20px;font-weight: bold; width: 50px; position:relative;top:-22px; left: 47px;" >'+pasandolista[contador].NumeroDeLista+'</h1>'+
                '<h1 style="font-size:18px; width: 400px; position:relative;top:-46px; left: 174px;" >'+pasandolista[contador].PrimerNombre+'</h1>'+
                '<div style="width: 300px;height: 26px;position: relative;top: -70px;right: -780px;background-color:#eddf21;border-radius: 10px;"></div>'
                '</div>'
                $('#cont').append(modulo)
				 contador=contador+1;
                }else{
document.getElementById('ocultando').style.display='';}
            };

            var alumnosFaltantes=JSON.stringify(arrayJS);
            $.post("GuardoFalta.php",{arrayDeValores:alumnosFaltantes},function(data) {
 
                // Mostramos el texto devuelto por el archivo php
               
            });

            var alumnosPresentes=JSON.stringify(arrayJS);
            $.post("GuardoAtiempo.php",{arrayDeValores:alumnosPresentes},function(data) {
 
                // Mostramos el texto devuelto por el archivo php
               
            });
             var alumnosLlegaTarde=JSON.stringify(arrayJS);
            $.post("GuardoLlegadaTarde.php",{arrayDeValores:alumnosLlegaTarde},function(data) {
 
                // Mostramos el texto devuelto por el archivo php
               
            });
           function GurdandoFaltas(){
            console.log("Faltan:")
            for (var i = 0; i < alumnosFaltantes.length; i++) {
                 console.log( alumnosFaltantes[i]);
                
            }
 console.log("Presentes:")
            for (var i = 0; i < alumnosPresentes.length; i++) {
                console.log(alumnosPresentes[i]);
            }
 console.log("Llegan tarde:")
            for (var i = 0; i < alumnosLlegaTarde.length; i++) {
                console.log(alumnosLlegaTarde[i]);
            }
           }
        
        
   

