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
//Obteniendo el numero de empleado
$Nombre=$_SESSION['name'];
$Apellido=$_SESSION['lastname'];
$query = "SELECT  id_user FROM users WHERE (User_name='$Nombre') AND (User_lastname= '$Apellido')";
$result = mysqli_query($conn, $query);
$row = mysqli_fetch_row($result);
$employee_num="";
if ($row[0]<>"") {
  $employee_num=$row[0];
}
//Concatenando el nombre del usuario
$date =$_POST['fecha'];
$user =$_SESSION['name']." ". $_SESSION['lastname'];
$product = $_POST['product'];
$area = $_POST['area'];
//Hacer un ciclo para guardar las respuestas en un arreglo
$GLOBALS['num_questions'] = $num_questions;
$i=1;
echo "<div class='alert alert-success mt-6' role='alert'>Ya entro insertar.</div>";
while ($i < 9) {
  $ans_res1= $_POST['question'.$i];
  $ans_res2= $_POST['quantity'.$i];
  $ans_res3= $_POST['reason'.$i];
  $query2 = "INSERT INTO checklist(checklist_date,checklist_product,checklist_user_num,checklist_user,checklist_area,checklist_question_num,checklist_question,checklist_answer,checklist_failures_qty,checklist_reason)
             VALUES ('$date','$product','$employee_num','$user','$area','$i','','$ans_res1','$ans_res2','$ans_res3')";
  if(mysqli_query($conn, $query2)){
          echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
          $i++;
        } else {
          echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $query2.</div>" . mysqli_connect_error($query2);
        }
}
?>
