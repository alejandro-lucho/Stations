<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Consultas activos</title>
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
      include ('conn.php');
      $linea = '';
      $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
      if ($conn=== false) {
        die("Connection failed: " . mysqli_connect_error());
      }
    ?>
    <h3 align="center">Consulta de inventario "Activos"</h3>
    <div class="form-row mb-0" >
      <div class="col" style="margin-top:30px">
        <input class="form-control my-0 py-1" id="search_text" type="text" placeholder="Buscar por Movimiento" aria-label="Search"><br>
        <div id="filter">
        </div>
      </div>
    </div>
  </body>
</html>
<script>
$(document).ready(function(){
  load_data();
  function load_data(query){
    $.ajax({
      url:"consulta_tablaA.php",
      method:"POST",
      data:{query:query},
      success:function(data){
        $('#filter').html(data);
      }
    });
  }
  $('#search_text').keyup(function(){
    var search = $(this).val();
    if(search != ''){
      load_data(search);
    }
    else{
      load_data();
    }
  });
});
</script>
