<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cerrar incidentes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom1.css">
  </head>
  <body>

    <?php
      if (isset($_SESSION['loggedin'])) {
      }
      else {
          echo "<div class='alert alert-danger mt-4' role='alert'>
          <h4>No has iniciado sesion aun.</h4>
          <p><a href='login.html'>Iniciar Sesion</a></p></div>";
          exit;
      }
      $now = time();
      if ($now > (isset($_SESSION['expire']))) {
          session_destroy();
          echo "<div class='alert alert-danger mt-4' role='alert'>
          <h4>Your session has expire!</h4>
          <p><a href='login.php'>Login Here</a></p></div>";
          exit;
          }
    ?>

    <div class="container" style="margin-top:80px">

    <!-- <table class="table table-hover table-sm table-dark"> -->
    <table class="table table-sm table-striped">
                <thead>
                  <tr>

                    <th style="border-color:black"  scope="col">Fecha</th>
                    <th style="border-color:black" scope="col">Usuario</th>
                    <th style="border-color:black" scope="col">Linea</th>
                    <th style="border-color:black" scope="col">Estacion</th>
                    <th style="border-color:black" scope="col">Numero Estacion</th>
                    <th style="border-color:black" scope="col">Numero Celda</th>
                    <th style="border-color:black" scope="col">Nombre Falla</th>
                    <th style="border-color:black" scope="col">Solucion</th>
                    <th style="border-color:black" scope="col">Minutos</th>


                  </tr>
                </thead>
                <tbody>

<?php

  include 'conn.php';
  $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  if ($conn=== false) {
    die("Connection failed: " . mysqli_connect_error());
  }

  $sql = "SELECT Issue_date, User_name, Production_line, Station_name,Station_Number,Cell_number,
          Issue_name,Issue_solution,Repaired_time FROM issues WHERE Issue_status='opened'";
          $result = mysqli_query($conn, $sql);
    			//$row = mysqli_fetch_row($result);
          if ($result->num_rows > 0) {

              while($row = $result->fetch_assoc()) {

                echo '<tr><td>'.$row["Issue_date"].'</td>
               <td>'.$row["User_name"].'</td>
               <td>'.$row["Production_line"].'</td>
               <td>'.$row["Station_name"].'</td>
               <td>'.$row["Station_Number"].'</td>
               <td>'.$row["Cell_number"].'</td>
               <td>'.$row["Issue_name"].'</td>
               <td>'.$row["Issue_solution"].'</td>
               <td>'.$row["Repaired_time"].'</td></tr>';

    }
}else {
  echo "no hay fallas abiertas";
}
$conn->close();
?>
  </tbody>
</table>
<a href="fallaquery.php"<button class="btn btn-info btn-block" type="submit">Editar Registros</button></a>
</div>
  </body>
</html>
