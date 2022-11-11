<?php


if( isset($_POST['data']) ) {
    $resultado = $_POST['data'];
    
}

require_once 'conexion.php';
		$query = "SELECT P.pri_nom as PrimerNombre, P.seg_nom as SegundoNombre, P.pri_ape as PrimerApellido, P.seg_ape as
SegundoApellido, P.cel as Celular, P.mail as Mail, Pe.juicioMat, avg(T.nota) as Promedio from Persona P
join Estudiante E on E.cedEst = P.cedula
join Pertenece Pe on Pe.cedEst = E.cedEst
join Trabaja T on T.cedEst = E.cedEst
where T.idGrupo = '2' and T.idMat = '2' and E.cedEst = '14'
group by E.cedEst, Pe.juicioMat;";
		$result = mysqli_query($conn, $query);
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            // Si se fijan, aquí creamos un array asociativo para recibir esos valores, 
            // tiene que coincidir el nombre de los campos de la bd
            $json[] = array(
                'PrimerNombre' => $row['PrimerNombre'],
                'SegundoNombre' => $row['SegundoNombre'],
                'PrimerApellido' => $row['PrimerApellido'],
                'SegundoApellido' => $row['SegundoApellido'],
                'Celular' => $row['Celular'],
                'Mail' => $row['Mail'],
                 'Promedio' => $row['Promedio']
            );
        	}
        	echo json_encode($json);
			
		} else {
        	echo "No devuelve nada";
        }
		
	
?>