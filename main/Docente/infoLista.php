<?php
    require_once 'conexion.php';

        $query = "SELECT Pe.nroLista as NumeroDeLista, P.pri_nom as PrimerNombre, P.seg_nom as SegundoNombre, P.pri_ape as 
PrimerApellido, P.seg_ape as SegundoApellido, E.cedEst as CedulaEstudiante from Pertenece Pe
join Estudiante E on E.cedEst = Pe.cedEst
join Persona P on P.cedula = E.cedEst
join Cursa C on C.idCursa = Pe.idCursa
join Asignatura A on A.idMat = C.idMat
join Grupo G on G.idGrupo = C.idGrupo
where G.orientacion = 'Informatica' and G.Grado = '3' and A.nombre = 'Base de Datos' Order by Pe.nroLista;";
        $result = mysqli_query($conn, $query);
     
       if($result){
            while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
               'NumeroDeLista' => $row['NumeroDeLista'],
                'PrimerNombre' => $row['PrimerNombre'],
              'SegundoNombre' => $row['SegundoNombre'],
              'PrimerApellido' => $row['PrimerApellido'],
              'SegundoApellido' => $row['SegundoApellido'],
              'CedulaEstudiante' => $row['CedulaEstudiante']
            );
            };
        };
            echo json_encode($json);
          
    
 
?> 

