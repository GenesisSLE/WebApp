$(document).ready(function(){
document.getElementById('HistorialFaltas').style.display='none';
$.ajax({
			url: 'traigoFaltas.php',
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
							<td>${res.NumeroLista}</td>
							<td>${res.NombreEstudiante} ${res.Apellido}</td>
							<td>${res.CedulaEstuidante}</td>
							<td>${res.Valor}</td>
						</tr>
					`
					$('#data2').html(ret);

				});	


}
});


});


