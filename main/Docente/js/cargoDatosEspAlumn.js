$(document).ready(function(){

getAll();
console.log("hola");
function getAll(){
		$.ajax({
	url: 'AlumnEsp.php',
			type: 'POST',
			data: {
				res: 1
			},
		success: function(response){
			 $('#data').html(response);
				let empleados = JSON.parse(response);
				let ret = '';
				console.log(empleados);
				if(empleados[0].PrimerNombre==null){empleados[0].PrimerNombre=''};
				if(empleados[0].SegundoNombre==null){empleados[0].SegundoNombre=''};
				console.log(empleados[0].PrimerNombre);

				var nombre=empleados[0].PrimerNombre;
				var Juicio=empleados[0].juicioMat;

	            $('#Nombre').html(nombre);
                $('#Juicio').html(Juicio);
				empleados.forEach(res => {
				ret += `
				<tr>
                <td class="tabla"> ${res.PrimerNombre} ${res.SegundoNombre} ${res.PrimerApellido} ${res.SegundoApellido}</td>
                 <td class="tabla"> ${res.Celular}</td>
                    <td class="tabla"> ${res.Mail} </td>
                 <td class="tabla">${res.Promedio}</td>
                </tr>
					`
					$('#data').html(ret);

				});

			}
		})
	}
});