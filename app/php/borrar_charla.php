<?php 

// incluyo conexion
include "conexion.php";

$id = $_POST['id'];
        
// borro datos
mysqli_query($connection_db, "DELETE FROM `charlas` WHERE `id`='$id'");

?>