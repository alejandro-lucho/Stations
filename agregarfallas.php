<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>fallas</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom1.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		<script src="jquery.lwMultiSelect.js"></script>
		<link rel="stylesheet" href="jquery.lwMultiSelect.css" />
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



    include ('conn.php');

    $linea = '';
      $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
      if ($conn=== false) {
        die("Connection failed: " . mysqli_connect_error());
      }

      $consulta = "SELECT DISTINCT Station_model FROM stations order by station_model";
      $result = mysqli_query($conn, $consulta);
      $options ="";
      while ($row = mysqli_fetch_row($result)) {
          $options = $options."<option>$row[0]</option>";
      }
      // $query = "SELECT DISTINCT Station_name FROM stations order by station_name";
      // $result2 = mysqli_query($conn, $query);
      // $options2 ="";
      // while ($row2 = mysqli_fetch_row($result2)) {
      //     $options2 = $options2."<option>$row2[0]</option>";
      // }
      // foreach($result as $row)
      // {
      // 	$linea .= '<option value="'.$row["Station_model"].'">'.$row["Station_model"].'</option>';
      //
      // }
    ?>

<div class="container">
  <form class="text-center" action="insertarafalla.php" method="post">
      <p class="h4 mb-4">Agregar Fallas</p>
      <div class="form-row mb-0">
          <div class="col">
              <select name="linea" id="lineaP" class="browser-default custom-select mb-4 form-control action" required >
                  <option value="" disabled selected>Linea Produccion:</option>
                    <?php echo $options;?>
              </select>
              <select name="estacion" id="nombreE" class="browser-default custom-select mb-4 form-control action" required>
      					<option value="">Nombre Estacion</option>
      				</select>

              <select name="Nestacion" id="numeroE" class="browser-default custom-select mb-4" required>
                  <option value="" disabled selected>Numero Estacion:</option>
                  <?php
                  for ($i=1; $i <26 ; $i++) {
                    echo "<option>$i</option>";
                  }
                   ?>
              </select>
              <select name="Ncelda" id="numeroC"class="browser-default custom-select mb-4" required>
                  <option value="" disabled selected>Numero Celda:</option>
                  <?php
                  for ($i=0; $i < 46 ; $i++) {
                    echo "<option>$i</option>";
                  }
                   ?>

              </select>

          </div>
          <div class="col">

              <input type="text" name="Nfalla" id="nombreF" class="form-control mb-4" placeholder="Nombre Falla:" required>
              <!-- <select name="Nfalla" id="nombreF"class="browser-default custom-select mb-4" required>
                <option value="" disabled selected>Nombre Falla:</option>
                <option value="stack">Cable Stack</option>

            </select> -->
            <select name="estatus" id="status"class="browser-default custom-select mb-4 " required>
                <option value="" disabled selected>Se reparo la celda?</option>
                <option value="closed">Si</option>
                <option value="opened">No</option>
            </select>

            <input type="number" name="tiempoR" class="form-control mb-4" placeholder="Tiempo de solucion (min)" required>
            <select name="pregunta"  id="pregunta"class="browser-default custom-select mb-4">
                <option value="" disabled selected>Se detuvo la estacion?</option>
                <option value="si">Si</option>
                <option value="no">No</option>
            </select>

          </div>
      </div>

      <div class="form-group mb-3">
          <input type="text" name="solucion" class="form-control mb-4" placeholder="Solucion" >
          <textarea class="form-control rounded-0" name="comentario" rows="4" placeholder="Comentarios"></textarea>
      </div>
      <button class="btn btn-info btn-block" type="submit">Enviar</button>
  </form>
</div>



  </body>
</html>
<script>
$(document).ready(function(){

	//$('#city').lwMultiSelect();

	$('.action').change(function(){
		if($(this).val() != '')
		{
			var action = $(this).attr("id");
			var query = $(this).val();
			var result = '';
			if(action == 'lineaP')
			{
				result = 'nombreE';
			}
			else
			{
				result = '';
			}
			$.ajax({
				url:'fetch.php',
				method:"POST",
				data:{action:action, query:query},
				success:function(data)
				{
					$('#'+result).html(data);
					if(result == 'city')
					{
						$('#city').data('plugin_lwMultiSelect').updateList();
					}
				}
			})
		}
	});

	$('#insert_data').on('submit', function(event){
		event.preventDefault();
		if($('#country').val() == '')
		{
			alert("Please Select Country");
			return false;
		}
		else if($('#state').val() == '')
		{
			alert("Please Select State");
			return false;
		}
		else if($('#city').val() == '')
		{
			alert("Please Select City");
			return false;
		}
		else
		{
			$('#hidden_city').val($('#city').val());
			$('#action').attr('disabled', 'disabled');
			var form_data = $(this).serialize();
			$.ajax({
				url:"insert.php",
				method:"POST",
				data:form_data,
				success:function(data)
				{
					$('#action').attr("disabled", "disabled");
					if(data == 'done')
					{
						$('#city').html('');
						$('#city').data('plugin_lwMultiSelect').updateList();
						$('#city').data('plugin_lwMultiSelect').removeAll();
						$('#insert_data')[0].reset();
						alert('Data Inserted');
					}
				}
			});
		}
	});

});
</script>
