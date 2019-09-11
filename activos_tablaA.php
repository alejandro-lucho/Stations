<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Activos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom1.css">
  </head>
  <body>
    <?php
      $_SESSION['date'] = date('Y-m-d H:i:s');
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
          $consulta = "SELECT User_name, user_lastname  FROM users order by User_name";
          $result = mysqli_query($conn, $consulta);
          $User="";
          while ($row = mysqli_fetch_row($result)) {
            $User = $User."<option>$row[0] $row[1]</option>";
          }
          $consulta = "SELECT model_name FROM model where model_insumo = 'No' order by model_name";
          $result = mysqli_query($conn, $consulta);
          $model="";
          while ($row = mysqli_fetch_row($result)) {
              $model = $model."<option>$row[0]</option>";
          }
          $consulta = "SELECT clients_name FROM clients order by clients_name";
          $result = mysqli_query($conn, $consulta);
          $client ="";
          while ($row = mysqli_fetch_row($result)) {
              $client = $client."<option>$row[0]</option>";
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
    <!-- <div class="container" style="margin-top:30px"> -->
      <form class="text-center" action="insertar_activos.php" method="post">
      <div class="form-row mb-0" >
        <input type="text" hidden name="fecha" value="<?php echo date('Y-m-d H:i:s'); ?> "></input>
        <div class="col-3">
          <select name="User" class="browser-default custom-select mb-4 form-control action">
              <option value="" disabled selected>Usuario</option>
                <?php echo $User;?>
          </select>
        </div>
        <div class="col-2">
          <input type="text" name="Serialnumber" class="form-control mb-4" placeholder="# Serie" required>
        </div>
        <div class="col-">
          <select name="Model" class="browser-default custom-select mb-4 form-control action" required >
              <option value="" disabled selected>Modelo</option>
                <?php echo $model;?>
          </select>
        </div>
        <div class="col">
          <input type="text" name="Assetnumber" class="form-control mb-4" placeholder="# Asset" required>
        </div>
        <div class="col">
          <select name="Acondition" class="browser-default custom-select mb-4 form-control action" required>
            <option value="" disabled selected>Condicion</option>
            <option value="Excelente">Excelente</option>
            <option value="Bueno">Bueno</option>
            <option value="Falla">Defectuoso</option>
          </select>
        </div>
      </div>
      <div class="form-row mb-0" >
        <div class="col-2">
          <select name="Astatus" class="browser-default custom-select mb-4 form-control action" required>
            <option value="" disabled selected>Status</option>
            <option value="Stock">Stock</option>
            <option value="Regresar a proveedor">Regresar</option>
          </select>
        </div>
        <div class="col">
          <select name="Client" class="browser-default custom-select mb-4 form-control action" required >
              <option value="" disabled selected>Cliente</option>
                <?php echo $client;?>
          </select>
        </div>
        <div class="col-5">
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
            <th style="border-color:black" scope="col">Usuario</th>
            <th style="border-color:black" scope="col">Tipo de Registro</th>
            <th style="border-color:black" scope="col">Numero de Serie</th>
            <th style="border-color:black" scope="col">Modelo</th>
            <th style="border-color:black" scope="col">Asset</th>
            <th style="border-color:black" scope="col">Condicion</th>
            <th style="border-color:black" scope="col">Estatus</th>
            <th style="border-color:black" scope="col">Cliente</th>
            <th style="border-color:black" scope="col">Comentario</th>
            <th style="border-color:black" scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <?php
            include 'conn.php';
            $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
            if ($conn=== false) {
              die("Connection failed: " . mysqli_connect_error());
            }
            $sql = "SELECT * FROM actives WHERE LEFT(actives_date, 10) LIKE '".date("Y-m-d")."%' Order by actives_date ";
            $result = mysqli_query($conn, $sql);
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo '<tr><td>'.$row["id_actives"].'</td>
                  <td>'.$row["actives_username"].'</td>
                  <td>'.$row["actives_type"].'</td>
                  <td>'.$row["actives_serialnumber"].'</td>
                  <td>'.$row["actives_name"].'</td>
                  <td>'.$row["actives_assetnumber"].'</td>
                  <td>'.$row["actives_condition"].'</td>
                  <td>'.$row["actives_status"].'</td>
                  <td>'.$row["actives_clients"].'</td>
                  <td>'.$row["actives_comments"].'</td>
                  <td><button type="button" name="return_btn" data-id9="'.$row["id_actives"].'" class="btn btn-xs btn-success btn_regresar">Regresar</button></td></tr>';
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
