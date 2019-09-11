<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Tipos de Producto</title>
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
        $consulta = "SELECT type_name FROM types order by type_name";
        $result = mysqli_query($conn, $consulta);
        $type="";
        while ($row = mysqli_fetch_row($result)) {
            $type = $type."<option>$row[0]</option>";
        }
        $consulta2 = "SELECT DISTINCT products_description FROM products order by products_description";
        $result2 = mysqli_query($conn, $consulta2);
        $product="";
        while ($row = mysqli_fetch_row($result2)) {
            $product = $product."<option>$row[0]</option>";
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
  <form class="text-center" action="insertarproductos.php" method="post">
      <p class="h4 mb-4">Tipos de producto</p>
      <div class="form-row mb-0">
          <div class="col">
            <select name="Etype" id="" class="browser-default custom-select mb-4 form-control action" required >
                <option value="" disabled selected>Seleccione tipo de Equipo</option>
                  <?php echo $type;?>
            </select>
          </div>
          <div class="col">
            <input type="text" name="Pname" class="form-control mb-4" placeholder="Agregar Nombre de Producto" required>
          </div>
      </div>
      <div>
        <!-- <textarea class="form-control rounded-0" name="Pdescription" rows="4" placeholder="Descripcion"></textarea> -->
        <select name="Plist" id="" class="browser-default custom-select mb-4 form-control action">
            <option value="" disabled selected>Lista de Producto existe</option>
              <?php echo $product;?>
        </select>
      </div><br>
      <button class="btn btn-info btn-block" type="submit">Enviar</button>
  </form>
</div>
  </body>
</html>
