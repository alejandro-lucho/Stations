<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cerrar incidentes</title>
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


    ?>



      <div style="margin-top:50px">


        <input class="form-control " id="search_text" type="text" placeholder="Buscar por Responsable/fecha/Estatus" aria-label="Search"></br>
        <div id="filter4">

        </div>
      </div>



  </body>
</html>

<script>
$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"fetchlivefallas.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#filter4').html(data);
   }
  });
 }
 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>
