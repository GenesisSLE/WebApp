<?php
require_once 'conexion.php';
		$query = "SELECT A.descripcion as DescripcionDelAntecedente, A.grado as 
GradoDelAntecedente from Antecedentes A
join TieneA T on T.idAnte = A.idAnte
join Estudiante E on E.cedEst = T.cedEst
where E.cedEst = '6';";
		$result = mysqli_query($conn, $query);
		$json = array();
		if($result) {
			while($row = mysqli_fetch_assoc($result)) {
            // Si se fijan, aquí creamos un array asociativo para recibir esos valores, 
            // tiene que coincidir el nombre de los campos de la bd
            $json[] = array(
                'DescripcionDelAntecedente' => $row['DescripcionDelAntecedente'],
                 'GradoDelAntecedente' => $row['GradoDelAntecedente']
                
            );
        	};
        	echo json_encode($json);
			
		} else {
        	echo "No devuelve nada";
        };
		
	
?>