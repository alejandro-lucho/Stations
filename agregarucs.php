<?php
  session_start();
  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>New UCS</title>
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

      $consulta = "SELECT DISTINCT Station_model FROM stations";
      $result = mysqli_query($conn, $consulta);
      $option1 ="";
      while ($row = mysqli_fetch_row($result)) {
          $option1 = $option1."<option>$row[0]</option>";
      }

    ?>

<div class="container">

  <form class="text-center" action="insertarucs.php" method="post">
      <p class="h4 mb-4">Agregar nuevo "UCS"</p>
      <div class="form-row mb-0">
          <div class="col">
              <select name="seleccion" class="browser-default custom-select mb-4">
                  <option value="" disabled selected>Linea PCBA - DF</option>
                  <option value="PCBA">PCBA</option>
                  <option value="DF">DF</option>
              </select>
              <input type="text" name="host" class="form-control mb-4" placeholder="ESXI-Host" required>
              <input type="text" name="Nserie" class="form-control mb-4" placeholder="Numero de Serie" required>
              <input type="text" name="Dip" class="form-control mb-4" placeholder="Direccion IP" required>
          </div>
          <div class="col">
            <input type="text" name="Dmac" class="form-control mb-4" placeholder="Direccion Mac" required>
            <input type="text" name="Nrfid" class="form-control mb-4" placeholder="Numero de RFID" required>
            <select name="linea" id="lineaPU" class="browser-default custom-select mb-4 form-control action" >
                <option value="" disabled selected>Linea Produccion:</option>
                  <?php echo $option1;?>
            </select>
            <select name="estacion" id="nombreEU" class="browser-default custom-select mb-4 form-control action">
              <option value="">Nombre Estacion</option>
            </select>
          </div>
      </div>

      <div class="form-group mb-3">
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
			if(action == 'lineaPU')
			{
				result = 'nombreEU';
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
