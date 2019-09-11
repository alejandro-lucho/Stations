<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "deadtime");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM ciscoincidents
  WHERE IncClosedby LIKE '%".$search."%'
  OR inc_date LIKE '%".$search."%'
  OR incStatus LIKE '%".$search."%'


 ";
}
else
{
 $query = "SELECT inc_date, User_name, inc_number, inc_description,inc_owner,inc_date_closed,
         comments,incStatus,IncClosedby FROM ciscoincidents";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">

   <table class="table table-hover table-sm table-dark">
    <tr>
    <th scope="col"><h6>Fecha Incidente</h6></th>
    <th scope="col"><h6>Abierto Por:</h6></th>
    <th scope="col"><h6>Numero Incidente</h6></th>
    <th scope="col"><h6>Descripcion </h6></th>
    <th scope="col"><h6>Responsable del Caso</h6></th>
    <th scope="col"><h6>Fecha Cerrado</h6></th>
    <th scope="col"><h6>Comentarios</h6></th>
    <th scope="col"><h6>Estatus</h6></th>
    <th scope="col"><h6>Cerrado Por:</h6></th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["inc_date"].'</td>
    <td>'.$row["User_name"].'</td>
    <td>'.$row["inc_number"].'</td>
    <td>'.$row["inc_description"].'</td>
    <td>'.$row["inc_owner"].'</td>
    <td>'.$row["inc_date_closed"].'</td>
    <td>'.$row["comments"].'</td>
    <td>'.$row["incStatus"].'</td>
    <td>'.$row["IncClosedby"].'</td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'No hay Casos ';
}

?>
