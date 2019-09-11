<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Insertar Falla</title>
    <link rel="stylesheet" href="css/bootstrapmin.css">
  </head>
  <body>

    <div class="container" style="margin-top:200px">
    <?php
    session_start();

    include 'conn.php';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
    if ($conn=== false) {
      die("Connection failed: " . mysqli_connect_error());
    }

    $User=$_SESSION['name']." ".$_SESSION['lastname'];
    $NombreT = $_POST['NombEm'];
    $NrelojT = $_POST['Nreloj'];
    $ApeT = $_POST['ApeEm'];
    $NgafeteT = $_POST['Ngafete'];
    $TurnoT = $_POST['turno'];
    $AreaT = $_POST['Areat'];
    $SuperT = $_POST['Supervisor'];
    $Posicion=2;
    

    $consulta = "INSERT INTO users (Id_user,User_badge, User_name,User_lastname,User_shift,User_Supervisor,User_area,User_position)
                 VALUES ('$NrelojT','$NgafeteT','$NombreT', '$ApeT','$TurnoT','$SuperT','$AreaT','$Posicion')";
          if(mysqli_query($conn, $consulta)){

                  echo "<div class='alert alert-success mt-5' role='alert'><h4><p class='text-center'>Usuario Agregado!</h></p>
        					<p class='text-center'><a href='index.php'><strong>Ir al inicio</strong></a></p></div>";




        } else {
          echo "<div class='alert alert-danger mt-5' role='alert'><h4><p class='text-center'>Error al agregar usuario!</h></p>
          <p class='text-center'><a href='index.php'><strong>Ir al inicio</strong></a></p></div>";
        }

    ?>
</div>
  </body>
</html>
