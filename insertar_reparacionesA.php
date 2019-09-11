<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  </head>
  <body>
    <?php
    session_start();
    include 'conn.php';
    $conn = mysqli_connect("localhost", "root", "", "deadtime");
    $date = $_POST['fecha'];
    $User=$_SESSION['name']." ".$_SESSION['lastname'];
    $Atype = "Reparado";
    $Serialnumber = $_POST['Serialnumber'];
    $Model = $_POST['Model'];
    $Assetnumber = $_POST['Assetnumber'];
    $Acondition = $_POST['Acondition'];
    $Astatus = $_POST['Astatus'];
    $Client = "";
    $Comments = $_POST['Comments'];
     $consulta = "SELECT inventorya_serialnumber, inventorya_comments FROM actives_inventory where inventorya_serialnumber = '$Serialnumber'";
     $result = mysqli_query($conn, $consulta);
     $row = mysqli_fetch_row($result);
     if ($row[0]=0) {
       echo '<p>Error, El numero de serie ya existe</p>';
     }else {
        $Comments = $_POST['Comments']." ,".$row[1];
        $consulta2 = "UPDATE actives_inventory SET inventorya_username='$User',inventorya_type='$Atype',inventorya_serialnumber='$Serialnumber',inventorya_name='$Model',inventorya_assetnumber='$Assetnumber',inventorya_condition='$Acondition',inventorya_status='$Astatus',inventorya_clients='$Client',inventorya_comments='$Comments'
                      WHERE inventorya_serialnumber='$Serialnumber'";
        $result2 = mysqli_query($conn, $consulta2);
        $Comments = $_POST['Comments'];
        $consulta3 = "INSERT INTO actives(actives_date,actives_username,actives_type,actives_serialnumber,actives_name,actives_assetnumber,actives_condition,actives_status,actives_clients,actives_comments)
                         VALUES ('$date','$User','$Atype','$Serialnumber','$Model','$Assetnumber','$Acondition','$Astatus','$Client','$Comments')";
        if(mysqli_query($conn, $consulta3)){
            echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
          } else {
            echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
          }
      }
      header( "refresh:2;url=index.php" );
    ?>
  </body>
</html>
