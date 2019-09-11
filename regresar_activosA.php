<?php
session_start();
include 'conn.php';
 $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
 $id = $_POST['id'];
 $consulta1 = "SELECT actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_comments FROM actives where id_actives = '$id'";
 $result1 = mysqli_query($conn, $consulta1);
 $row = mysqli_fetch_row($result1);
 $date = $_SESSION['fecha'];
 $user = $row[0];
 $Atype = "Error Captura";
 $Serialnumber = $row[2];
 $Model = $row[3];
 $Assetnumber = $row[4];
 $Acondition = $row[5];
 $Astatus = $row[6];
 $Client = $row[7];
 $Comments = "Error de captura, Equipo eliminado, ".$row[8];
 $consulta2 = "SELECT id_inventorya FROM actives_inventory where inventorya_serialnumber = '$Serialnumber'";
 $result2 = mysqli_query($conn, $consulta2);
 $row2 = mysqli_fetch_row($result2);
 $consulta3 = "DELETE FROM actives_inventory where inventorya_serialnumber = '$Serialnumber'";
 $result3 = mysqli_query($conn, $consulta3);
 //$row3 = mysqli_fetch_row($result3);
 if(mysqli_query($conn, $consulta3)){
   echo "<div class='alert alert-success mt-6' role='alert'>El equipo fue eliminado del Stock.</div>";
 }else {
   echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
 }
 $consulta4 = "INSERT INTO actives (actives_date,actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_comments)
               VALUES ('$date','$user','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Comments')";
 if(mysqli_query($conn, $consulta4)){
   echo "<div class='alert alert-success mt-6' role='alert'>Nuevo movimiento.</div>";
   //header( "refresh:1;url=index.php" );
 }else {
   echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta4.</div>" . mysqli_connect_error($consulta4);
 }
 header( "refresh:1;url=index.php" );
 ?>
