<?php 

include "conexion.php";

$datos = json_decode($_POST['data_act']);
$nombre = $datos[0];
$dias = $datos[1];
$horario = $datos[2];
mysqli_query($connection_db, "INSERT INTO `charlas`(`nombre`, `fecha`, `horario`) VALUES ('$nombre','$dias','$horario')");
   
?>