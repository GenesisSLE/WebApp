$(document).ready(function(){
console.log("hola");
getAll();
$('#save').on('click', function(){
       
          
            let nota = $('#nota').val();
             var tipo = document.getElementById("tipo").value;
            console.log(tipo);
            console.log(nota);



            $.ajax({
                url: 'guardoNota.php',
                type: 'POST',
                data: {
                    tipo: tipo,
                    nota: nota
                  
                },
                success: function(data){
                     $('#tipo').val('');
                     $('#nota').val('');
                     getAll();
                     
                }
            });
        getAll();
    
 
    });

function getAll(){
    var Cedula = localStorage.getItem("cedula");
    var MandoCed = parseInt(Cedula);

    $.ajax({
url: 'TraigoNotasDeAlumno.php',
        type: 'POST',
        data: {
            res: 1
        }, success: function(response){
            let Notas = JSON.parse(response);
            console.log(Notas);
            console.log(Notas[1].Nota);
            for (var i = 0; i < Notas.length; i++) {
                 var modulo='<div class="Lnota"><h1 id="tipo"style="font-size: 20px;position: relative;top: 7px;left: 14px;">'+Notas[i].TipoTrabajo+'</h1><h1 id="Notaa" style="font-size: 20px; position: relative;right: -200px; top: 7px;">'+Notas[i].Nota+'</h1></div>';
                $('#metoNotas').append(modulo);
            }
            
    }
})
}






});
