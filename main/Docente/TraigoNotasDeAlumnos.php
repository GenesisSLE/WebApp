<?php
require_once 'conexion.php';
		$query = "SELECT E.cedEst as CedulaEstudiante, P.pri_nom as NombreEstudiante, P.seg_nom as SegNomEst, P.pri_ape as Apellido, P.seg_ape as SegApeEst, T.tipo as 
TipoTrabajo, T.nota as NotaTrabajo, T.fechaTra as FechaTrabajo
from Trabaja T
join Asignatura A on T.idMat = A.idMat
join Estudiante E on E.cedEst = T.cedEst
join Persona P on P.cedula = E.cedEst
join Cursa C on C.idMat = A.idMat
join Grupo G on G.idGrupo = C.idGrupo
where G.grado = 3 and G.orientacion = 'Informatica' and A.nombre = 'Base de Datos';";
		$result = mysqli_query($conn, $query);
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
                'CedulaEstudiante' => $row['CedulaEstudiante'],
                'NombreEstudiante' => $row['NombreEstudiante'],
                'Apellido' => $row['Apellido'],
                'TipoTrabajo' => $row['TipoTrabajo'],
             	'NotaTrabajo' => $row['NotaTrabajo'],
             'FechaTrabajo' => $row['FechaTrabajo']
            );
        	}
        	echo json_encode($json);
			
		} else {
        	echo "No devuelve nada";
        }
		
	
?>

