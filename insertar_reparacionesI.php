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
    $Itype = "Reparado";
    $Model = $_POST['Model'];
    $Qty = $_POST['Qty'];
    $Comments = $_POST['Comments'];
    $consulta1 = "SELECT inventory_qty,id_inventory FROM inventory where (inventory_name = '$Model') AND (inventory_type = 'Scrap')";
    $result1 = mysqli_query($conn, $consulta1);
    $row1 = mysqli_fetch_row($result1);
    if ($row1>0) {
      $consulta2 = "SELECT inventory_qty,id_inventory FROM inventory where (inventory_name = '$Model') AND (inventory_type != 'Scrap')";
      $result2 = mysqli_query($conn, $consulta2);
      $row2 = mysqli_fetch_row($result2);
      if ($row2 >0) {
        $row1[0] = $row1[0]*-1;
        if ($Qty>$row1[0] ) {
            echo "<div class='alert alert-success mt-6' role='alert'>La cantidad ingresada es mayor a la cantidad de equipo dañado.</div>";
            header( "refresh:1;url=index.php" );
        }else {
          $Qty2 = $row2[0]+$Qty;
          $consulta2 = "UPDATE inventory SET inventory_username='$User',inventory_type='$Itype',inventory_qty='$Qty2',inventory_comments='$Comments'
                        WHERE (inventory_name='$Model') AND (inventory_type != 'Scrap')";
          $result2 = mysqli_query($conn, $consulta2);
          $consulta3 = "INSERT INTO insumos(insumos_date,insumos_username,insumos_type,insumos_name,insumos_qty,insumos_comments)
                         VALUES ('$date','$User','$Itype','$Model','$Qty','$Comments')";
          if(mysqli_query($conn, $consulta3)){
              echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
          } else {
              echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
          }
          $Qty3=$row1[0]-$Qty;
          $Qty3=$Qty3*-1;
          if ($Qty3==0) {
            $Consulta4 = "DELETE FROM inventory WHERE id_inventory = '$row1[1]'";
            $result4 = mysqli_query($conn, $consulta4);
          }else {
            $consulta5 = "UPDATE inventory SET inventory_qty ='$Qty3' WHERE id_inventory = '$row1[1]'";
            $result5 = mysqli_query($conn, $consulta5);
          }
          header( "refresh:1;url=index.php" );
        }
      }else {
        echo "<div class='alert alert-success mt-6' role='alert'>algo salio mal con la consulta.</div>";
      }
    }
    ?>
  </body>
</html>
