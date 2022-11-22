<?php
require_once 'conexion.php';
		$query = "SELECT Pe.nroLista as NumeroLista, E.cedEst as CedulaEstuidante, P.pri_nom as NombreEstudiante, P.seg_nom as SegNomEst, P.pri_ape as Apellido, P.seg_ape as SegApeEst, sum(A.valor) 
as Valor, G.orientacion as Orientacion, G.grado as Grado, Asign.nombre as NombreMateria from Estudiante E
join Persona P on P.cedula = E.cedEst
join Pertenece Pe on Pe.cedEst = E.cedEst
join Asiste A on E.cedEst = A.cedEst
join Clase C on C.idClase = A.idClase
join Tiene2 T2 on T2.idClase = C.idClase
join Asignatura Asign on Asign.idMat = T2.idMat
join Grupo G on G.idGrupo = T2.idGrupo
where Asign.nombre = 'Base de Datos' and G.grado = 3 and G.orientacion = 'Informatica'
group by Asign.idMat, G.grado, G.orientacion, E.cedEst, Pe.nroLista";
		$result = mysqli_query($conn, $query);
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
            	'NumeroLista' => $row['NumeroLista'],
                'CedulaEstuidante' => $row['CedulaEstuidante'],
                'NombreEstudiante' => $row['NombreEstudiante'],
                'Apellido' => $row['Apellido'],
             'Valor' => $row['Valor']
             
            );
        	}
        	echo json_encode($json);
			
		} else {
        	echo "No devuelve nada";
        }
		
	
?>

