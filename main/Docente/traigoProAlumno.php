<?php 
require_once 'conexion.php';
$query = "SELECT Pe.nroLista as NumeroLista, E.cedEst as CedulaEstudiante, P.pri_nom as NombreEstudiante, P.seg_nom as SegNomEst, P.pri_ape as Apellido, P.seg_ape as SegApeEst, T.tipo as 
TipoTrabajo, avg(T.nota) as Promedio, G.orientacion as Orientacion, G.grado as Grado, A.nombre as NombreMateria 
from Trabaja T
join Asignatura A on T.idMat = A.idMat
join Estudiante E on E.cedEst = T.cedEst
join Persona P on P.cedula = E.cedEst
join Pertenece Pe on Pe.cedEst = E.cedEst
join Cursa C on C.idMat = A.idMat
join Grupo G on G.idGrupo = C.idGrupo
where G.grado = 3 and G.orientacion = 'Informatica' and A.nombre = 'Base de Datos'
Group By G.orientacion, G.grado, A.idMat, E.cedEst;";
		$result = mysqli_query($conn, $query);
		$json = array();

			while($row = mysqli_fetch_assoc($result)) {
            // Si se fijan, aquí creamos un array asociativo para recibir esos valores, 
            // tiene que coincidir el nombre de los campos de la bd
            $json[] = array(
                'NumeroLista' => $row['NumeroLista'],
                'CedulaEstudiante' => $row['CedulaEstudiante'],
                'NombreEstudiante' => $row['NombreEstudiante'],
                'Apellido' => $row['Apellido'],
                'Promedio' => $row['Promedio']
            );
        	}
        	echo json_encode($json);
			
		
	


?>
