$(document).ready(function(){
    getAll();
    function getAll(){
        $.ajax({
            url: 'listar.php',
            type: 'POST',
            data: {
                res: 1
            },
            success: function(response){
            pasandolista = JSON.parse(response);              
            console.log(pasandolista);
            console.log(pasandolista[0].nombre);
            localStorage.setItem("nombreMateria", pasandolista[0].nombre);
            localStorage.setItem("nombreMateria", pasandolista[0].grado);
            localStorage.setItem("nombreMateria", pasandolista[0].orientacion);
  str='';
            str += `
        <br>
            <tr >
                
 
 
               <button style="width: 310px;height: 50px;background-color: whitesmoke;border-radius:5px;font-weight: bold;  box-shadow:0px 0px 2px 0px;cursor:pointer;"onclick="RedirijeLibre()"><div style="position:relative;left:-94px;top:16px;">${pasandolista[0].nombre}</div><div style="position:relative;left:5px;top:1px;">${pasandolista[0].grado}</div><div style="position:relative;left:100px;bottom:15px;">${pasandolista[0].orientacion}</div></button>
                
    
            </tr>
           <br>

        `
        document.getElementById('table_data').innerHTML = str;
            }
        })
    }
   
         

        });
 
        function RedirijeLibre(){
            location.href = 'ListAlumnoDoc.html'; 
        }
        