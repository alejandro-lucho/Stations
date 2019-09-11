<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>


    <?php
    //fetch.php
    $connect = mysqli_connect("localhost", "root", "", "deadtime");
    $output = '';
    if(isset($_POST["query"]))
    {
     $search = mysqli_real_escape_string($connect, $_POST["query"]);
     $query = "
      SELECT * FROM ucs_list
      WHERE station_model LIKE '%".$search."%'
      OR station_name LIKE '%".$search."%'
      OR ucs_line LIKE '%".$search."%'


     ";
    }
    else
    {
     // $query = "SELECT id_inc, inc_date, User_name, inc_number,inc_description,inc_owner,inc_date_closed,comments,elapsed_time FROM ciscoincidents";
     $query="SELECT id_inc,inc_date, User_name, inc_number, inc_description,inc_owner,inc_date_closed,comments,elapsed_time FROM ciscoincidents
      WHERE incStatus='opened'";
    }
    $result = mysqli_query($connect, $query);
    if(mysqli_num_rows($result) > 0)
    {
     $output .= '
      <div class="table-responsive">

       <table class="table table-hover table-sm table-dark">
        <tr>
        <th scope="col"><h6>ID</h6></th>
        <th scope="col"><h6>Fecha abierto</h6></th>
        <th scope="col"><h6>Usuario</h6></th>
        <th scope="col"><h6>Numero Incidente</h6></th>
        <th scope="col"><h6>Descripcion</h6></th>
        <th scope="col"><h6>Responsable</h6></th>
        <th scope="col"><h6>Fecha Cerrado</h6></th>
        <th scope="col"><h6>Comentarios</h6></th>

        </tr>
     ';
     while($row = mysqli_fetch_array($result))
     {
      $output .= '
       <tr>
        <td>'.$row["id_inc"].'</td>
        <td>'.$row["inc_date"].'</td>
        <td>'.$row["User_name"].'</td>
        <td>'.$row["inc_number"].'</td>
        <td>'.$row["inc_description"].'</td>
        <td>'.$row["inc_owner"].'</td>
        <td>'.$row["inc_date_closed"].'</td>
        <td>'.$row["comments"].'</td>

       </tr>
      ';
     }
     echo $output;
    }
    else
    {
     echo 'No Hay Inicidentes pendientes';
    }

    ?>
    <!-- <a href="fallaquery.php"<button class="btn btn-info " type="submit">Cerrar Incidentes</button></a></br></br> -->
    <a  class="btn btn-info  " href="fallaqueryCisco.php" role="button">Editar Registros</a></br></br>

  </body>
</html>
