<?php
  require_once 'conexion.php';

  $query = "SELECT E.cedEst as CedulaEstudiante, G.idGrupo as idGrupo, G.orientacion as OrientacionGrupo, G.grado as
  GradoGrupo, G.tipo as tipoDeGrupo, C.ano as AñoCursaGrupo, P.nroLista as NroListaEstudiante, Pe.pri_nom as PrimerNombre, Pe.seg_nom as SegundoNombre, Pe.pri_ape as PrimerApellido, Pe.seg_ape as SegundoApellido
  from Estudiante E
  join Pertenece P on P.cedEst = E.cedEst
  join Cursa C on C.idCursa = P.idCursa
  join Grupo G on G.idGrupo = C.idGrupo
  join Persona Pe on Pe.cedula = E.cedEst";
  $result = mysqli_query($conn, $query);
  echo $result;
  if($result){
      while($row = mysqli_fetch_assoc($result)) {
      $json[] = array(
          'NroListaEstudiante' => $row['NroListaEstudiante'],
                  'PrimerNombre' => $row['PrimerNombre'],
                'SegundoNombre' => $row['SegundoNombre']
      );
      };
  };
      echo json_encode($json);
      //ACAAA
?>
