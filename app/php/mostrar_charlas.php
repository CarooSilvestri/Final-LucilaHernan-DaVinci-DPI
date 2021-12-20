<?php 

// incluyo conexion
include "conexion.php";

// mostrar artistas
// consuldo datos
$query = mysqli_query($connection_db, "SELECT * FROM `charlas`");
$ar = array();
while ($row = mysqli_fetch_array($query)) {

    array_push($ar, $row);
}

echo json_encode($ar);
?>