
<?php
session_start();
include 'conn.php';
 $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
 $id = $_POST['id'];
 $consulta1 = "SELECT insumos_username,insumos_type,insumos_name,insumos_qty,insumos_client,insumos_area,insumos_areanumber,insumos_comments FROM insumos where id_insumos = '$id'";
 $result1 = mysqli_query($conn, $consulta1);
 $row = mysqli_fetch_row($result1);
 $date=$_SESSION['fecha'];
 $user = $row[0];
 $Itype = $row[1];
 $Model = $row[2];
 $Qty = $row[3];
 $Client = $row[4];
 $Area = $row[5];
 $Enumber = $row[6];
 $Comments = $row[7];
   $consulta2 = "SELECT inventory_qty FROM inventory where (inventory_name = '$Model') AND (inventory_type != 'Scrap')";
   $result = mysqli_query($conn, $consulta2);
   $row2 = mysqli_fetch_row($result);
   if ($Itype == "Compra") {
     $Qty2 = "-".$Qty;
     //$Npositivo = $Qty*-1;
     $Resta = $row2[0] - $Qty;
     $Itype2 = "Error de Recibo";
     $consulta = "INSERT INTO insumos (insumos_date,insumos_username,insumos_type,insumos_name,insumos_qty,insumos_client,insumos_area,insumos_areanumber,insumos_comments)
                   VALUES ('$date','$user','$Itype2','$Model',$Qty2,'$Client','$Area','$Enumber','$Comments')";

     if(mysqli_query($conn, $consulta)){
       $update2 = "UPDATE inventory set inventory_qty= '$Resta' where inventory_name = '$Model'";
       $result2 = mysqli_query($conn, $update2);
       echo "El equipo fue regresado a Stock.";
       header( "refresh:1;url=index.php" );
     } else {
       echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta.</div>" . mysqli_connect_error($consulta);
     }
  }elseif ($Itype == "Error de Recibo" || $Itype == "Regresado") {
      echo "<div class='alert alert-success mt-6' role='alert'>No se pueden realizar transacciones con este registro</div>";
  }elseif ($Itype == "Consumo") {
        $Npositivo = $Qty*-1;
        $Suma = $row2[0]+$Npositivo;
        $Itype2 = "Regresado";
        $consulta = "INSERT INTO insumos (insumos_date,insumos_username,insumos_type,insumos_name,insumos_qty,insumos_client,insumos_area,insumos_areanumber,insumos_comments)
                   VALUES ('$date','$user','$Itype2','$Model',$Npositivo,'$Client','$Area','$Enumber','$Comments')";
        if(mysqli_query($conn, $consulta)){
        $update2 = "UPDATE inventory set inventory_qty= '$Suma' where (inventory_name = '$Model') AND (inventory_type != 'Scrap')";
        $result2 = mysqli_query($conn, $update2);
        echo "<div role='alert'>El equipo fue regresado a Stock.</div>";
        header( "refresh:1;url=index.php" );
        } else {
          echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta.</div>" . mysqli_connect_error($consulta);
        }
  }
 ?>
