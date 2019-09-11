<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Insertar Productos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">.
  </head>
  <body>
    <?php
    include 'conn.php';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
    if ($conn=== false) {
      die("Connection failed: " . mysqli_connect_error());
    }
    $date = $_POST['fecha'];
    $Pname = $_POST['Pname'];
    $Mname = $_POST['Pname']."->".$_POST['Mname'];
    $Mdescription = $_POST['Mdescription'];
    $Ucost = $_POST['Ucost'];
    $Porder = $_POST['Porder'];
    $Ltime = $_POST['Ltime'];
    $Cname = $_POST['Cname'];
    $Esinsumo = $_POST['Esinsumo'];
    $consulta1 = "SELECT id_products FROM products where products_name = '$Pname'";
    $result1 = mysqli_query($conn, $consulta1);
    $row1 = mysqli_fetch_row($result1);
    $id_products = $row1[0];
    $consulta2 = "SELECT id_clients FROM clients where clients_name = '$Cname'";
    $result2 = mysqli_query($conn, $consulta2);
    $row2 = mysqli_fetch_row($result2);
    $id_clients = $row2[0];
    $consulta3 = "INSERT INTO model (model_date,model_name,model_description,model_cost,model_purchase,model_lifetime,model_insumo,id_clients,id_products)
    		          VALUES ('$date','$Mname','$Mdescription','$Ucost','$Porder','$Ltime','$Esinsumo','$id_clients','$id_products')";
      if(mysqli_query($conn, $consulta3)){
              echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
              header( "refresh:2;url=index.php" );
    } else {
              echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta3.</div>" . mysqli_connect_error($consulta3);
    }
    ?>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </body>
</html>
