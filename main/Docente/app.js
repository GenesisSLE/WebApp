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
  str='';
            str += `
        <br>
            <tr>
                <td>${item.Nombre}${item.Grado}${item.Curso}</td>
            </tr>
           <br>

        `
        document.getElementById('table_data').innerHTML = str;
            }
        })
    }
   
         


}); 
