<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  </head>
  <body>

  </body>
</html>

<?php
session_start();
include 'conn.php';
$conn = mysqli_connect("localhost", "root", "", "deadtime");
//$user =$_SESSION['name']." ". $_SESSION['lastname'];
$date =$_POST['fecha'];
$User =$_POST['User'];
$Atype = "Stock";
$Serialnumber = $_POST['Serialnumber'];
$Model = $_POST['Model'];
$Assetnumber = $_POST['Assetnumber'];
$Acondition = $_POST['Acondition'];
$Astatus = $_POST['Astatus'];
$Client = $_POST['Client'];
// $Area = $_POST['Nomenclature'];
// $Enumber =$_POST['Enumber'];
// $Cnumber =$_POST['Cnumber'];
$Comments = $_POST['Comments'];
$error = false;
 $consulta = "SELECT inventorya_serialnumber FROM actives_inventory where inventorya_serialnumber = '$Serialnumber'";
 $result = mysqli_query($conn, $consulta);
 $row = mysqli_fetch_row($result);
 if ($row[0]>0) {
   echo '<p>Error, El numero de serie ya existe</p>';
 }else {
    $consulta2 = "INSERT INTO actives_inventory(inventorya_date,inventorya_username,inventorya_type,inventorya_serialnumber,inventorya_name,inventorya_assetnumber,inventorya_condition,inventorya_status,inventorya_clients,inventorya_comments)
               VALUES ('$date','$User','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Comments')";
    $result2 = mysqli_query($conn, $consulta2);
    $consulta3 = "INSERT INTO actives(actives_date,actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_comments)
                     VALUES ('$date','$User','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Comments')";
    //$result3 = mysqli_query($conn, $consulta3);
    if(mysqli_query($conn, $consulta3)){
        echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
      } else {
        echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
      }
  }
  header( "refresh:1;url=index.php" );
?>
