<?php 

// incluyo conexion
include "conexion.php";

// borro datos
mysqli_query($connection_db, "DELETE FROM `charlas`");
?>