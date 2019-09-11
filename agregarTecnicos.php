<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Agregar Tecnicos</title>
  </head>
  <body>
    <?php
    session_start();

    $Nombre=$_SESSION['name'];
    $Apellido=$_SESSION['lastname'];

    include 'conn.php';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
    if ($conn=== false) {
      die("Connection failed: " . mysqli_connect_error());
    }
    $query = "SELECT  User_position FROM users WHERE (User_name='$Nombre') AND (User_lastname= '$Apellido')";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_row($result);
    if ($row[0] == 2) {
        header("Location:Acceso.php");
    }

    ?>
  </br></br></br>
    <div class="container">
      <form class="text-center" action="insertarTec.php" method="post">
          <p class="h4 mb-4">Agregar Tecnicos</p>
          <div class="form-row mb-0">
              <div class="col">
                  <input type="text" name="NombEm" class="form-control mb-4" placeholder="Nombre:" required>
                  <input type="number" min="0" name="Nreloj" class="form-control mb-4" placeholder="Numero de Reloj:" required>
              </div>
              <div class="col">
                <input type="text" name="ApeEm" class="form-control mb-4" placeholder="Apellido:" required>
                <input type="number" min="0" name="Ngafete" class="form-control mb-4" placeholder="Numero de Gafete:" required>
              </div>
              <div class="col">
                <select name="turno" class="browser-default custom-select mb-4 " required>
                    <option value="" disabled selected>Turno</option>
                    <option value="1">Primero</option>
                    <option value="2">Segundo</option>
                    <option value="3">Tercero</option>
                </select>
                <select name="Areat" class="browser-default custom-select mb-4 " required>
                    <option value="" disabled selected>Area:</option>
                    <option value="Nyquist">Nyquist</option>
                    <option value="Azteca">Azteca</option>
                    <option value="Maya">Maya</option>
                </select>
              </div>
          </div>
          <div class="form-group mb-3">
              <input type="text" name="Supervisor" class="form-control mb-4" placeholder="Nombre Supervisor:" required>
          </div>
          <button class="btn btn-info btn-block" type="submit">Enviar</button>
      </form>
    </div>
  </body>
</html>
