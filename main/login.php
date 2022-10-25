<?php
session_start();
require 'conexion.php';

sleep(1);

$usuarios = $mysqli->query("SELECT cedula,P.mail, P.contrasena, if (D.cedProf is null, 0, 1) as Profesor, if (A.cedAds is null, 0, 1) as Adscripta,
 if (C.cedCoor is null, 0, 1) as Coordinador, if (S.cedSec is null, 0, 1) as Secretaria, 
 if (I.cedIns is null, 0, 1) as Inspectora, if (E.cedEst is null, 0, 1) as Estudiante
 from Persona P 
 left join Profesor D on P.cedula = D.cedProf
 left join Adscripta A on P.cedula = A.cedAds
 left join Coordinador C on P.cedula = C.cedCoor
 left join Secretaria S on P.cedula = S.cedSec
 left join Inspectora I on P.cedula = I.cedIns
 left join Estudiante E on P.cedula = E.cedEst where mail='".$_POST['usuariolg']."' and contrasena='".$_POST['passlg']."'");
if($usuarios){
            while($row = mysqli_fetch_assoc($usuarios)) {
            $json[] = array(
               'cedula' => $row['cedula'],
              'Profesor' => $row['Profesor'],
              'Adscripta' => $row['Adscripta'],
              'Coordinador' => $row['Coordinador'],
              'Secretaria' => $row['Secretaria'],
              'Inspectora' => $row['Inspectora'],
              'Estudiante' => $row['Estudiante']
            );
            };
        };
            echo json_encode($json);

?>