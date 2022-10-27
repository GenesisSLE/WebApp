<?php
require_once 'conexion.php';
		$query = "SELECT Pe.nroLista as NumeroDeLista, P.pri_nom as PrimerNombre, P.seg_nom as SegundoNombre, P.pri_ape as 
PrimerApellido, P.seg_ape as SegundoApellido from Pertenece Pe
join Estudiante E on E.cedEst = Pe.cedEst
join Persona P on P.cedula = E.cedEst
join Cursa C on C.idCursa = Pe.idCursa
join Asignatura A on A.idMat = C.idMat
join Grupo G on G.idGrupo = C.idGrupo;";
		$result = mysqli_query($conn, $query);
		echo json_encode($result);
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
                'NumeroDeLista' => $row['NumeroDeLista'],
                'PrimerNombre' => $row['PrimerNombre']
             
                
            );
        	}
        	echo json_encode($json);
			
		} else {
        	echo "No devuelve nada";
        }
		
	
?>