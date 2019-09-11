<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Registro de Incidentes</title>
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
      //ESTE SELECT SE USARA PARA REGISTRAR EL USUARIO QUE LEVANTO EL TICKET
      $consulta = "SELECT DISTINCT User_name FROM users";
      $result = mysqli_query($conn, $consulta);
      $option1 ="";
      while ($row = mysqli_fetch_row($result)) {
          $option1 = $option1."<option>$row[0]</option>";

      }

    ?>

<div class="container">
<!--<form class="text-center border border-light p-5">-->
  <form class="text-center" action="insertarincidentes.php" method="post">
      <p class="h4 mb-4">Agregar Incidente</p>
      <div class="form-row mb-0">
          <div class="col">

              <input type="text" name="Nincidente" class="form-control mb-4" placeholder="Numero de incidente" required>

          </div>
          <div class="col">
            <input type="text" name="propietario" class="form-control mb-4" placeholder="Seguimiento por:" required>
          </div>
      </div>

      <div class="form-group mb-3">
          <input type="text" name="descripcion" class="form-control mb-4" placeholder="Descripcion del incidente" required>
          <textarea class="form-control rounded-0" name="comentario" rows="4" placeholder="Comentarios"></textarea>
      </div>
      <button class="btn btn-info btn-block" type="submit">Enviar</button>
  </form>
</div>



  </body>
</html>
