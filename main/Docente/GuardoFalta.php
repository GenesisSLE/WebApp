<?php
 require_once 'conexion.php';
$alumnosFaltantes= json_decode($_POST["alumnosFaltantes"]);
echo $_POST["alumnosFaltantes"];
$fecha=$_POST["hora"];
var_dump($alumnosFaltantes);
$alumnosPresentes = json_decode($_POST["alumnosPresentes"]);
echo $_POST["alumnosPresentes"];
var_dump($alumnosPresentes);
$alumnosLlegaTarde = json_decode($_POST["alumnosLlegaTarde"]);
echo $_POST["alumnosLlegaTarde"];
var_dump($alumnosLlegaTarde);


 
for ($i = 0; $i <= 6; $i++) {
    if($alumnosFaltantes==null){
    $query1= "insert into Asiste (cedEst, idClase, fecha, tipo, valor) values ('".$alumnosFaltantes[$i]."', 1, '2020-10-28', 'Falta', 1);";
  mysqli_query($conn, $query1);
    }
}
for ($i = 0; $i <= 6; $i++) {
    if($alumnosPresentes==null){
    $query2= "insert into Asiste (cedEst, idClase, fecha, tipo, valor) values ('".$alumnosPresentes[$i]."', 1, '2020-10-28', 'Presente', 0);";
    mysqli_query($conn, $query2);
    }
}
for ($i = 0; $i <= 6; $i++) {
    if($alumnosLlegaTarde==null){
    $query3= "insert into Asiste (cedEst, idClase, fecha, tipo, valor) values ('".$alumnosLlegaTarde[$i]."', 1, '2020-10-28', 'Falta', 0.5);";
    mysqli_query($conn, $query3);
    }
}

?>