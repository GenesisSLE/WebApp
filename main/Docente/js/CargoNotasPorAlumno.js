$(document).ready(function(){
document.getElementById('HistorialFaltas').style.display='none';
$.ajax({
			url: 'TraigoNotasDeAlumnos.php',
			type: 'POST',
			data: {
				res: 1
			},
			success: function(response){
				// $('#data').html(response);
				let empleados = JSON.parse(response);
				let ret = '';
				console.log(JSON.parse(response));
				empleados.forEach(res => {
					ret += `
						<tr cod="">
							<td>${res.CedulaEstudiante}</td>
							<td>${res.NombreEstudiante} ${res.Apellido}</td>
							<td>${res.TipoTrabajo}</td>
							<td>${res.NotaTrabajo}</td>
							<td>${res.FechaTrabajo}</td>
						</tr>
					`
					$('#data3').html(ret);

				});	


}
});


});


