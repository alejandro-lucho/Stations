<?php
session_start();
include 'conn.php';
$conn = mysqli_connect("localhost", "root", "", "deadtime");
if ($conn=== false) {
  die("Connection failed: " . mysqli_connect_error());
}
//$user =$_SESSION['name']." ". $_SESSION['lastname'];
$date = $_POST['fecha'];
$User =$_POST['User'];
$Atype = $_POST['Atype'];
$Serialnumber = $_POST['Serialnumber'];
$Model = $_POST['Model'];
$Assetnumber = $_POST['Assetnumber'];
$Acondition = $_POST['Acondition'];
$Astatus = $_POST['Astatus'];
$Client = $_POST['Client'];
$Area = $_POST['Nomenclature'];
$Enumber =$_POST['Enumber'];
$Cnumber =$_POST['Cnumber'];
$Comments = $_POST['Comments'];
 // $consulta = "SELECT inventorya_qty FROM inventoryactives where inventorya_name = '$Model'";
 // $result = mysqli_query($conn, $consulta);
 // $row = mysqli_fetch_row($result);
 if ($Atype=="Consumo") {
   if ($Astatus == "Reparar" || $Astatus == "Regresar") {
     echo "<div class='alert alert-danger mt-4' role='alert'>El campo Estatus no puede ser 'Reparar' o 'Regresar', y verifica que el campo condicion sea correcto.</div>";
   }elseif ($Acondition == "Defectuoso") {
     echo "<div class='alert alert-danger mt-4' role='alert'>El campo Condicion no puede ser Defectuoso', y verifica que el campo Estatus sea correcto.</div>";
   }else {
     $consulta2 = "UPDATE actives_inventory SET inventorya_type = '$Atype', inventorya_condition='$Acondition', inventorya_status='$Astatus', inventorya_clients='$Client', inventorya_nomenclature='$Area', inventorya_stationnumber='$Enumber', inventorya_cellnumber='$Cnumber', inventorya_comments='$Comments'
                WHERE inventorya_serialnumber = '$Serialnumber'";
     //$result2 = mysqli_query($conn, $consulta2);
     if(mysqli_query($conn, $consulta2)){
     } else {
       echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
     }
     $consulta3 = "INSERT INTO actives(actives_date,actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_nomenclature,actives_stationnumber,actives_cellnumber,actives_comments)
                      VALUES ('$date','$User','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Area','$Enumber','$Cnumber','$Comments')";
     //$result3 = mysqli_query($conn, $consulta3);
     if(mysqli_query($conn, $consulta3)){
       echo "<div class='alert alert-success mt-6' role='alert'>Equipo Asignado Correctamente.</div>";
     } else {
       echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
     }
     header( "refresh:1;url=index.php" );
   }

 }elseif($Atype=="Scrap"){
   if ($Acondition == "Excelente" || $Acondition == "Bueno") {
     echo "<div class='alert alert-danger mt-4' role='alert'>El campo Condicion no puede ser 'Excelente' o 'Bueno', y verifica que el campo Estatus sea correcto.</div>";
   }elseif ($Astatus == "Entregado" ) {
     echo "<div class='alert alert-danger mt-4' role='alert'>El campo Estatus no puede ser 'Entregado' y verifica que el campo Estatus sea correcto.</div>";
   }else{
     $consulta2 = "UPDATE actives_inventory SET inventorya_type = '$Atype', inventorya_condition='$Acondition', inventorya_status='$Astatus', inventorya_clients='$Client', inventorya_nomenclature='$Area', inventorya_stationnumber='$Enumber', inventorya_cellnumber='$Cnumber', inventorya_comments='$Comments'
                WHERE inventorya_serialnumber = '$Serialnumber'";
     //$result2 = mysqli_query($conn, $consulta2);
     if(mysqli_query($conn, $consulta2)){
     } else {
       echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
     }
     $consulta3 = "INSERT INTO actives(actives_date,actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_nomenclature,actives_stationnumber,actives_cellnumber,actives_comments)
                      VALUES ('$date','$User','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Area','$Enumber','$Cnumber','$Comments')";
    // $result3 = mysqli_query($conn, $consulta3);
     if(mysqli_query($conn, $consulta3)){
       echo "<div class='alert alert-success mt-6' role='alert'>Equipo Asignado Correctamente.</div>";
     } else {
       echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
     }
     header( "refresh:1;url=index.php" );
   }
 }
$conn->close();
 ?>
