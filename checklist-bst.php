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
    ?>
    <script type="text/javascript">
      function metodo() {
        var select=document.getElementById("question1").value;
        if (select=="yes") {
          var qty1=document.getElementById("quantity1").setAttribute("disabled","");
          var reason1=document.getElementById("reason1").setAttribute("disabled","");
        }
      }
    </script>
<form class="text-center" action="insertar_checklist.php" method="post">
  <div class="col-3">
    <select name="product" class="browser-default custom-select mb-4 form-control action" required>
      <option value="" disabled selected>Seleccione Producto</option>
      <option value="Porter">Porter</option>
      <option value="Nyquist">Nyquist</option>
      <option value="Azteca">Azteca</option>
  </select>
  </div>
  <div class="list-group list-group-flush">
    <!-- //Pregunta # 1 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿El escaner se encuentra en todas las estaciones?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question1" id="question1" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity1" id="quantity1" class="form-control mb-4" placeholder="¿Cuantos no tienen?">
      </div>
      <div class="col">
        <input type="text" name="reason1" id="reason1" class="form-control mb-4" placeholder="¿Porque?">
      </div>
    </div>
    <!-- //Pregunta # 2 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿Las celdas se encuentran alineadas y permiten la entrada de la unidad correctamente?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question2" id="question2" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity2" id="quantity2" class="form-control mb-4" placeholder="¿Cuantas fallaron?" required>
      </div>
      <div class="col">
        <input type="text" name="reason2" id="reason2" class="form-control mb-4" placeholder="¿Porque?" required>
      </div>
    </div>
    <!-- //Pregunta # 3 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿Las etiquetas de usuario, password y modelos son legibles por el escaner?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question3" id="question3" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity3" id="quantity4" class="form-control mb-4" placeholder="¿Cuantas son ilegibles?" required>
      </div>
      <div class="col">
        <input type="text" name="reason3" id="reason4" class="form-control mb-4" placeholder="¿Porque?" required>
      </div>
    </div>
    <!-- //Pregunta # 4 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿Se encontraron celdas que presenten fallas de voltajes o encendido?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question4" id="question4" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity4" id="quantity4" class="form-control mb-4" placeholder="¿Cuantas fallaron?" required>
      </div>
      <div class="col">
        <input type="text" name="reason4" id="reason4" class="form-control mb-4" placeholder="¿Porque?" required>
      </div>
    </div>
    <!-- //Pregunta # 5 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿La estacion esta funcional en pantalla para uso del operador?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question5" id="question5" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity5" id="quantity5" class="form-control mb-4" placeholder="¿Hubo errores?" required>
      </div>
      <div class="col">
        <input type="text" name="reason5" id="reason5" class="form-control mb-4" placeholder="¿Porque?" required>
      </div>
    </div>
    <!-- //Pregunta # 6 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿Los abanicos de las estaciones encienden correctamente?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question6" id="question6" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity6" id="quantity6" class="form-control mb-4" placeholder="¿Cuantos fallaron?">
      </div>
      <div class="col">
        <input type="text" name="reason6" id="reason6" class="form-control mb-4" placeholder="¿Porque?">
      </div>
    </div>
    <!-- //Pregunta # 7 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿Los POE's estan prendidos y con todos los cables de prueba conectados?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question7" id="question7" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity7" id="quantity7" class="form-control mb-4" placeholder="¿Cuantos fallaron?">
      </div>
      <div class="col">
        <input type="text" name="reason7" id="reason7" class="form-control mb-4" placeholder="¿Porque?">
      </div>
    </div>
    <!-- //Pregunta # 8 -->
    <div class="btn-group dropright">
      <h3><u><p2>¿Se tienen suficientes UP-LINK/ Abanicos de prueba para las estaciones?</p2></u></h3>
    </div>
    <div class="btn-group dropright">
      <div class="col-1.5">
        <select name="question8" id="question8" onchange="metodo();" class="browser-default custom-select mb-4 form-control action" required>
          <option value="" disabled selected>Seleccione</option>
          <option value="yes">Si</option>
          <option value="no">No</option>
          <option value="apply">No Aplica</option>
      </select>
      </div>
      <div class="col-2">
        <input type="text" name="quantity8" id="quantity8" class="form-control mb-4" placeholder="¿Cuantos fallaron?">
      </div>
      <div class="col">
        <input type="text" name="reason8" id="reason8" class="form-control mb-4" placeholder="¿Porque?">
      </div>
    </div>
  </div>
      <!-- Obteniendo la fecha actual -->
      <div class="form-row mb-0" >
        <input type="text" hidden name="fecha" value="<?php echo date('Y-m-d H:i:s'); ?> "></input>
        <input type="text" hidden name="area" value="<?php $area="BST"; ?> "></input>
        <div class="col">
            <button class="btn btn-info btn-block" type="submit">Agregar</button>
        </div>
      </div>
</form>
      <table class="table table-sm table-striped table-light">
        <thead>
          <tr>
            <th style="border-color:black" scope="col">Fecha</th>
            <th style="border-color:black" scope="col">Producto</th>
            <th style="border-color:black" scope="col">Empleado</th>
            <th style="border-color:black" scope="col">Area</th>
            <th style="border-color:black" scope="col">Num Pregunta</th>
            <th style="border-color:black" scope="col">Respuesta</th>
            <th style="border-color:black" scope="col">Faltante</th>
            <th style="border-color:black" scope="col">Comentarios</th>
          </tr>
        </thead>
        <tbody>
          <?php
            include 'conn.php';
            $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
            if ($conn=== false) {
              die("Connection failed: " . mysqli_connect_error());
            }
            $sql = "SELECT * FROM checklist WHERE LEFT(checklist_date, 10) LIKE '".date("Y-m-d")."%' Order by checklist_date ";
            $result = mysqli_query($conn, $sql);
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo '<tr><td>'.$row["checklist_date"].'</td>
                  <td>'.$row["checklist_product"].'</td>
                  <td>'.$row["checklist_user"].'</td>
                  <td>'.$row["checklist_area"].'</td>
                  <td>'.$row["checklist_question_num"].'</td>
                  <td>'.$row["checklist_answer"].'</td>
                  <td>'.$row["checklist_failures_qty"].'</td>
                  <td>'.$row["checklist_reason"].'</td>
                  <td><button type="button" name="return_btn" data-id9="'.$row["id_checklist"].'" class="btn btn-xs btn-success btn_regresar">Regresar</button></td></tr>';
              }
            }else {
              echo "No se han realizado registros en el dia";
            }
            $conn->close();
          ?>
        </tbody>
      </table>
  </body>
</html>
