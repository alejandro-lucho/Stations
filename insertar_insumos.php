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
$user =$_POST['User'];
$Itype = $_POST['Itype'];
$Model = $_POST['Model'];
$Qty = $_POST['Qty'];
$Client = $_POST['Client'];
$Area = $_POST['Area'];
$Enumber =$_POST['Enumber'];
$Comments = $_POST['Comments'];
$date = $_POST['fecha'];
//Obtener la cantidad del inventario disponible como scrap
 $consulta = "SELECT id_inventory,inventory_qty FROM inventory where (inventory_name = '$Model') AND (inventory_type != 'Scrap')";
 $result = mysqli_query($conn, $consulta);
 $row = mysqli_fetch_row($result);
 //Verificacion de tipo de movimiento
 if ($row>0) {
   if ($Itype=="Compra" || $Itype=="Stock") {
      $Esuma = $row[1]+$Qty;
      $consulta3 = "UPDATE inventory set inventory_qty= '$Esuma' where id_inventory = '$row[0]'";
      $result3 = mysqli_query($conn, $consulta3);
   }elseif ($Itype=="Consumo") {
     $Esuma = $row[1]-$Qty;
     $consulta4 = "UPDATE inventory set inventory_qty= '$Esuma' where id_inventory = '$row[0]'";
     $result4 = mysqli_query($conn, $consulta4);
   }elseif ($Itype=="Scrap") {
     //Verificamos que el modelo ya exista en el inventario disponible, Obtenemos el id y cantidad tambien
     $consulta4 = "SELECT id_inventory,inventory_qty FROM inventory where (inventory_name = '$Model') AND (inventory_type = '$Itype')";
     $result4 = mysqli_query($conn, $consulta4);
     $row2 = mysqli_fetch_row($result4);
     if ($row2>0) {
       //Se hace negativa la cantidad de scrap y se realiza la suma con la cantidad ya existente en el inventario
       //$Qty2 = $Qty*-1;
       $Esuma = $row[1]-$Qty;
       $consulta5 = "UPDATE inventory set inventory_qty = '$Esuma' where id_inventory = '$row[0]'";
       $result5 = mysqli_query($conn, $consulta5);
       $Cscrap= $row2[1]-$Qty;
       $consulta5 = "UPDATE inventory set inventory_qty = '$Cscrap' where id_inventory = '$row2[0]'";
       $result5 = mysqli_query($conn, $consulta5);
       echo "<div class='alert alert-success mt-6' role='alert'>El Scrap fue generado</div>";
     }else {
       $consulta6 = "INSERT INTO inventory (inventory_date,inventory_username,inventory_type,inventory_name,inventory_qty,inventory_client,inventory_area,inventory_comments)
                     VALUES ('$date','$user','$Itype','$Model','$Qty','$Client','$Area','$Comments')";
       if(mysqli_query($conn, $consulta6)){
         echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
       } else {
         echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta6.</div>" . mysqli_connect_error($consulta6);
       }
     }
   }
 }else {
   $consulta3 = "INSERT INTO inventory (inventory_date,inventory_username,inventory_type,inventory_name,inventory_qty,inventory_client,inventory_area,inventory_comments)
                 VALUES ('$date','$user','$Itype','$Model','$Qty','$Client','$Area','$Comments')";
   $result3 = mysqli_query($conn, $consulta3);
 }
 if ($Itype == "Compra" || $Itype == "Stock") {
   //Al ser compra no lleva a un una area asignada.,
   //Se agrega el insumo al log de movimientos
   $consulta2 = "INSERT INTO insumos (insumos_date,insumos_username,insumos_type,insumos_name,insumos_qty,insumos_client,insumos_area,insumos_areanumber,insumos_comments)
                 VALUES ('$date','$user','$Itype','$Model','$Qty','$Client','$Area','$Enumber','$Comments')";
   if(mysqli_query($conn, $consulta2)){
     echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
   } else {
     echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta2.</div>" . mysqli_connect_error($consulta2);
   }
 }else {
   //Se hace negativa la cantidad y se agrega a el log de movimientos
   $negativo = "-".$Qty;
   $consulta2 = "INSERT INTO insumos (insumos_date,insumos_username,insumos_type,insumos_name,insumos_qty,insumos_client,insumos_area,insumos_areanumber,insumos_comments)
                 VALUES ('$date','$user','$Itype','$Model','$negativo','$Client','$Area','$Enumber','$Comments')";
   if(mysqli_query($conn, $consulta2)){
     //$row3 = mysqli_fetch_assoc($result2);
     echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
   } else {
     echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta2.</div>" . mysqli_connect_error($consulta2);
   }
 }
header( "refresh:1;url=index.php" );
$conn->close();
 ?>
