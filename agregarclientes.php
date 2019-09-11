<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Clientes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom1.css">
  </head>
  <body>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
    include 'conn.php';
      $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
      if ($conn=== false) {
        die("Connection failed: " . mysqli_connect_error());
      }
      $Nombre=$_SESSION['name'];
      $Apellido=$_SESSION['lastname'];
      $query = "SELECT  User_position FROM users WHERE (User_name='$Nombre') AND (User_lastname= '$Apellido')";
      $result = mysqli_query($conn, $query);
      $row = mysqli_fetch_row($result);
      if ($row[0] == 2) {
          header("Location:Acceso.php");
      }
    ?>
<div class="container">
  <form class="text-center" action="insertarclientes.php" method="post">
      <p class="h4 mb-4">Nombre de Clientes</p>
      <div class="form-row mb-0">
          <div class="col">
            <input name="Client" id="" class="browser-default custom-select mb-4 form-control action" placeholder="Nombre de Cliente" required>
          </div>
          <div class="col">
            <input type="text" name="Tclient" id="" class="form-control mb-4" placeholder="Tipo de Cliente" required>
          </div>
      </div>
      <button class="btn btn-info btn-block" type="submit">Enviar</button>
  </form>
</div><br>
<div class="container">
  <!-- <div class="row"  style="margin-left:38%"> -->
  <div class="row">
    <div class="col-xs-12">
      <table class="table table-sm table-striped table-light">
      <!-- <table class="table table-sm table-striped"> -->
        <thead>
          <tr>
            <th style="border-color:black"  scope="col">Id_Cliente</th>
            <th style="border-color:black"  style="margin-left:100px" scope="col">Nombre de Cliente</th>
            <th style="border-color:black"  scope="col">Tipo de Cliente</th>
          </tr>
        </thead>
        <tbody>
          <?php
            $consulta = "SELECT * FROM clients";
            $result = mysqli_query($conn, $consulta);
            $id_type="";
            $type="";
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo '<tr><td>'.$row["id_clients"].'</td>
                <td>'.$row["clients_name"].'</td>
                <td>'.$row["clients_type"].'</td></tr>';
              }
            }
            $conn->close();
          ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
  </body>
</html>
