<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Reparaciones</title>
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
      include 'conn.php';
      $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
      if ($conn=== false) {
        die("Connection failed: " . mysqli_connect_error());
      }
      $consulta = "SELECT inventory_name FROM inventory where inventory_type = 'Scrap' order by inventory_name";
      $result = mysqli_query($conn, $consulta);
      $model="";
      while ($row = mysqli_fetch_row($result)) {
        $model = $model."<option>$row[0]</option>";
      }
      $Nombre=$_SESSION['name'];
      $Apellido=$_SESSION['lastname'];
      $query = "SELECT  User_position FROM users WHERE (User_name='$Nombre') AND (User_lastname= '$Apellido')";
      $result = mysqli_query($conn, $query);
      $row = mysqli_fetch_row($result);
      if ($row[0] == 2) {
          header("Location:Acceso.php");
      }
    //  $date = date('Y-m-d H:i:s');
    ?>
    <h3 align="center">Registro de Reparaciones "Insumos"</h3>
    <!-- <div class="container" style="margin-top:30px"> -->
      <form class="text-center" action="insertar_reparacionesI.php" method="post">
        <input type="text" hidden name="fecha" value="<?php echo date('Y-m-d H:i:s'); ?> "></input>
      <div class="form-row mb-0" >
        <div class="col">
          <select name="Model" id = "Model" class="browser-default custom-select mb-4 form-control action" required >
            <option value="" disabled selected>Modelo</option>
            <?php echo $model;?>
          </select>
        </div>
        <div class="col">
          <input type="number" name="Qty" class="form-control mb-4" placeholder="Cantidad" required>
        </div>
        <div class="col">
          <input type="text" name="Comments" class="form-control mb-4" placeholder="Comentarios">
        </div>
        <div class="col">
            <button class="btn btn-info btn-block" type="submit">Agregar</button>
        </div>
      </div>
      </form>
      <table class="table table-sm table-striped table-light">
        <thead>
          <tr>
            <th style="border-color:black"  scope="col">ID</th>
            <th style="border-color:black" scope="col">Tipo de Registro</th>
            <th style="border-color:black" scope="col">Modelo</th>
            <th style="border-color:black" scope="col">Cantidad</th>
            <th style="border-color:black" scope="col">Comentario</th>
            <th style="border-color:black" scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <?php
          $date = date("Y-m-d H:i:s");
            include 'conn.php';
            $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
            if ($conn=== false) {
              die("Connection failed: " . mysqli_connect_error());
            }
            $sql = "SELECT * FROM insumos WHERE (LEFT(insumos_date, 10) LIKE '".date("Y-m-d")."%') AND (insumos_type = 'Reparado') Order by insumos_date ";
            //$sql = "SELECT * FROM insumos WHERE (insumos_date = '$date') AND (insumos_type = 'Reparado') Order by insumos_date ";
            $result = mysqli_query($conn, $sql);
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo '<tr><td>'.$row["id_insumos"].'</td>
                  <td>'.$row["insumos_type"].'</td>
                  <td>'.$row["insumos_name"].'</td>
                  <td>'.$row["insumos_qty"].'</td>
                  <td>'.$row["insumos_comments"].'</td>
                  <td><button type="button" name="return_btn" data-id9="'.$row["id_insumos"].'" class="btn btn-xs btn-success btn_regresar">Regresar</button></td></tr>';
              }
            }else {
              echo "No se han realizado registros en el dia";
            }
            $conn->close();
          ?>
        </tbody>
      </table>
    <!-- </div> -->
  </body>
</html>
