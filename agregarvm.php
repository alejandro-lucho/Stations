<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>New VM</title>
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

        $consulta = "SELECT DISTINCT station_name FROM stations";
        $result = mysqli_query($conn, $consulta);
        $options ="";
        while ($row = mysqli_fetch_row($result)) {
            $options = $options."<option>$row[0]</option>";
        }
        $consulta = "SELECT ucs_esxihost FROM ucs_list";
        $result = mysqli_query($conn, $consulta);
        $ucs ="";
          while ($row = mysqli_fetch_row($result)) {
            $ucs = $ucs."<option>$row[0]</option>";
          }


    ?>

<div class="container">
<!--<form class="text-center border border-light p-5">-->
  <form class="text-center" action="insertarvm.php" method="post">
      <p class="h4 mb-4">Maquinas Virtuales "VM"</p>
      <div class="form-row mb-0">
          <div class="col">
              <!--<input type="text" name="linea" class="form-control mb-4" placeholder="Linea Produccion" required>

              <select name="seleccion" class="browser-default custom-select mb-4">
                  <option value="" disabled selected>Linea PCBA - DF</option>
                  <option value="PCBA">PCBA</option>
                  <option value="DF">DF</option>
              </select>-->
              <input type="text" name="Nhost" class="form-control mb-4" placeholder="Nombre Host" required>
              <input type="text" name="Dip" class="form-control mb-4" placeholder="Direccion IP" required>

              <!--<input type="text" name="Dmac" class="form-control mb-4" placeholder="Direccion Mac" required>-->
          </div>
          <div class="col">
            <input type="text" name="Dmac" class="form-control mb-4" placeholder="Direccion Mac" required>
            <!--<input type="text" name="Nrfid" class="form-control mb-4" placeholder="Numero de RFID" required>
            <input type="text" name="estacion" class="form-control mb-4" placeholder="Nombre Estacion" required>-->
            <select name="Nucs" class="browser-default custom-select mb-4">
                <option value="" disabled selected>Selecciona UCS</option>
                  <?php echo $ucs;?>

            </select>

          </div>
      </div>
      <div class="form-group mb-3">
          <textarea class="form-control rounded-0" name="comentario" rows="4" placeholder="Comentarios"></textarea>
      </div>
      <button class="btn btn-info btn-block" type="submit">Enviar</button>
  </form>
</div>



  </body>
</html>
