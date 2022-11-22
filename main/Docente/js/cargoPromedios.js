$(document).ready(function(){
document.getElementById('HistorialFaltas').style.display='none';
document.getElementById('NotasPorAlumno').style.display='none';
$.ajax({
			url: 'traigoProAlumno.php',
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
							<td>${res.CedulaEstudiante}</td>
							<td>${res.Promedio}</td>
						</tr>
					`
					$('#data').html(ret);

				});


}
});


});
function MuestroPromedioActual(){
	document.getElementById('HistorialFaltas').style.display='none';
	document.getElementById('NotasPorAlumno').style.display='none';
document.getElementById('promediosActuales').style.display='';

}
function MuestroHistorialFaltas(){
	document.getElementById('promediosActuales').style.display='none';
		document.getElementById('NotasPorAlumno').style.display='none';
	document.getElementById('HistorialFaltas').style.display='';

}
function MuestroNotasAlumnos(){
	document.getElementById('promediosActuales').style.display='none';
	document.getElementById('HistorialFaltas').style.display='none';
	document.getElementById('NotasPorAlumno').style.display='';
}