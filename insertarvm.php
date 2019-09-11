<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Insertar VM</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">.
  </head>
  <body>

    <?php
    include 'conn.php';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
    if ($conn=== false) {
      die("Connection failed: " . mysqli_connect_error());
    }


    $Nhost = $_POST['Nhost'];
    $Dip = $_POST['Dip'];
    $Nucs = $_POST['Nucs'];
    $Dmac = $_POST['Dmac'];
    $Comment = $_POST['comentario'];

    $consulta = "SELECT id_ucs FROM ucs_list where ucs_esxihost = '$Nucs'";
    $result = mysqli_query($conn, $consulta);
    //$iducs ="";
      while ($row = mysqli_fetch_row($result)) {
        $iducs = $row[0];
      }

    //$id= "SELECT Station_id from stations where Nomenclature ='$concatenado'";
    //$result = mysqli_query($conn, $id);
    //$row =mysqli_fetch_row($result);
    //$dato=$row[0];

    $consulta2 = "INSERT INTO virtual_machines (vm_hostname,vm_ipaddress,vm_macaddress,id_ucs,comments)
    		          VALUES ('$Nhost','$Dip','$Dmac','$iducs','$Comment')";

      if(mysqli_query($conn, $consulta2)){
              echo "<div class='alert alert-success mt-6' role='alert'>Datos Agregados Correctamente.</div>";
              header( "refresh:2;url=index.php" );
    } else {
              echo "<div class='alert alert-danger mt-4' role='alert'>Error al ingresar datos! $consulta2.</div>" . mysqli_connect_error($consulta2);
    }

    ?>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </body>
</html>
