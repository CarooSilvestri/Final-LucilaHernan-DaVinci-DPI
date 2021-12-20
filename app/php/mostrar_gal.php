<?php

// incluyo conexion
include "conexion.php";

// mostrar galerias
// consuldo datos
$query = mysqli_query($connection_db, "SELECT * FROM `galerias`");
$ar = array();
while ($row = mysqli_fetch_array($query)) {

    array_push($ar, $row);
}

echo json_encode($ar);

?>