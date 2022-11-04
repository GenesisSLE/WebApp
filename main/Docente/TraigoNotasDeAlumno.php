<?php
require_once 'conexion.php';
		$query = "SELECT T.idTrabaja as idTrabajo, E.cedEst as CedulaEstudiante, A.idMat as IdMateria, T.tipo as 
TipoTrabajo, avg(T.nota) as Nota, G.orientacion as Orientacion, G.grado as Grado, A.nombre as 
NombreMateria from Trabaja T
join Asignatura A on T.idMat = A.idMat
join Estudiante E on E.cedEst = T.cedEst
join Cursa C on C.idMat = A.idMat
join Grupo G on G.idGrupo = C.idGrupo
where E.cedEst='14'and Orientacion='Informatica'
Group By G.orientacion, G.grado, A.idMat, E.cedEst;";
		$result = mysqli_query($conn, $query);
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
                'Nota' => $row['Nota'],
                'TipoTrabajo' => $row['TipoTrabajo']
             
                
            );
        	}
        	echo json_encode($json);
			
		} else {
        	echo "No devuelve nada";
        }
		
	
?>