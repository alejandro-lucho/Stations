<?php
session_start();
include 'conn.php';
 $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
 $id = $_POST['id'];
 $consulta1 = "SELECT actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_comments FROM actives where id_actives = '$id'";
 $result1 = mysqli_query($conn, $consulta1);
 $row = mysqli_fetch_row($result1);
 $date= $_SESSION['fecha'];
 $user = $row[0];
 $Atype = "";
 $Serialnumber = $row[2];
 $Model = $row[3];
 $Assetnumber = $row[4];
 $Acondition = $row[5];
 $Astatus = "Stock";
 $Client = "";
 $Area = "";
 $Enumber = "";
 $Cnumber = "";
 $Comments = "Ya no se va a usar";
 //Obtenemos el id del numero de serie
 // $consulta2 = "SELECT id_inventorya FROM actives_inventory where inventorya_serialnumber = '$Serialnumber'";
 // $result2 = mysqli_query($conn, $consulta2);
 // $row2 = mysqli_fetch_row($result2);
 //regresamos el activo al stock y actualizamos los datos en la tabla de inventario
 $consulta3 = "UPDATE actives_inventory SET inventorya_type = '$Atype', inventorya_status = '$Astatus', inventorya_clients= '$Client', inventorya_nomenclature = '$Area',inventorya_stationnumber = '$Enumber', inventorya_cellnumber='$Cnumber',inventorya_comments ='$Comments'
     WHERE inventorya_serialnumber = '$Serialnumber'";
 $result3 = mysqli_query($conn, $consulta3);
 if(mysqli_query($conn, $consulta3)){
   //Agregamos los datos del movimiento al log de activos
   $Atype = "Regresado";
   $consulta4 = "INSERT INTO actives (actives_date,actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_nomenclature,actives_stationnumber,actives_cellnumber,actives_comments)
                 VALUES ('$date','$user','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Area','$Enumber','$Cnumber','$Comments')";
   if(mysqli_query($conn, $consulta4)){
     echo "<div class='alert alert-success mt-6' role='alert'>El equipo fue regresado al Stock.</div>";
     //header( "refresh:1;url=index.php" );
   }else {
     echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta4.</div>" . mysqli_connect_error($consulta4);
   }
 }else {
   echo "<div class='alert alert-danger mt-4' role='alert'>No se pudo ingresar el equipo a Stock $consulta3.</div>" . mysqli_connect_error($consulta3);
 }
 header( "refresh:1;url=index.php" );
 ?>
