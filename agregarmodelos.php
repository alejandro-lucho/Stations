<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Modelos</title>
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
        $consulta = "SELECT products_description FROM products order by products_description";
        $result = mysqli_query($conn, $consulta);
        $product="";
        while ($row = mysqli_fetch_row($result)) {
            $product = $product."<option>$row[0]</option>";
        }
        $consulta = "SELECT clients_name FROM clients order by clients_name";
        $result = mysqli_query($conn, $consulta);
        $clients_name="";
        while ($row = mysqli_fetch_row($result)) {
            $clients_name = $clients_name."<option>$row[0]</option>";
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
  <form class="text-center" action="insertarmodelos.php" method="post">
      <p class="h4 mb-4">Tipos de Modelos</p>
      <div class="form-row mb-0">
        <input type="text" hidden name="fecha" value="<?php echo date('Y-m-d H:i:s'); ?> "></input>
          <div class="col">
            <select name="Pname" id="" class="browser-default custom-select mb-4 form-control action" required >
                <option value="" disabled selected>Seleccione Producto</option>
                  <?php echo $product;?>
            </select>
            <input type="text" name="Mname" class="form-control mb-4" placeholder="Numero de Modelo" required>
            <input type="text" name="Mdescription" class="form-control mb-4" placeholder="Descripcion" required>
            <input type="number" name="Ucost" class="form-control mb-4" placeholder="Costo Unitario 'Dolares'" required>
          </div>
          <div class="col">
            <input type="text" name="Porder" class="form-control mb-4" placeholder="Numero de Orden de Compra" required>
            <input type="text" name="Ltime" class="form-control mb-4" placeholder="Tiempo de vida 'En Meses'" required>
            <select name="Cname" id="" class="browser-default custom-select mb-4 form-control action" required >
                <option value="" disabled selected>Comprado por:</option>
                  <?php echo $clients_name;?>
            </select>
            <select name="Esinsumo" id="" class="browser-default custom-select mb-4 form-control action" required >
                <option value="" disabled selected>Es insumo?</option>
                  <option value="Yes">Yes</option>
                  <option value="No">No</option>
            </select>
          </div>
      </div>
      <button class="btn btn-info btn-block" type="submit">Enviar</button>
  </form>
</div>
  </body>
</html>
