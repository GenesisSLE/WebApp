<?php
    require_once 'conexion.php';

        $query = "SELECT nombre,nroLista FROM pasandolista";
        $result = mysqli_query($conn, $query);
     echo $result;
       if($result){
            while($row = mysqli_fetch_assoc($result)) {
            $json[] = array(
               
                'nombre' => $row['nombre'],
              'nroLista' => $row['nroLista']
            );
            };
        };
            echo json_encode($json);
          
    
 
?> 

