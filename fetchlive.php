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
 $query = "SELECT ucs_esxihost, station_model, ucs_line, ucs_ipaddress,ucs_macaddress,station_name,
         User_name FROM ucs_list";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">

   <table class="table table-hover table-sm table-dark">
    <tr>
    <th scope="col"><h6>UCS</h6></th>
    <th scope="col"><h6>Linea</h6></th>
    <th scope="col"><h6>Area</h6></th>
    <th scope="col"><h6>Direccion IP</h6></th>
    <th scope="col"><h6>MAC Address</h6></th>
    <th scope="col"><h6>Estacion</h6></th>
    <th scope="col"><h6>Creado Por</h6></th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["ucs_esxihost"].'</td>
    <td>'.$row["station_model"].'</td>
    <td>'.$row["ucs_line"].'</td>
    <td>'.$row["ucs_ipaddress"].'</td>
    <td>'.$row["ucs_macaddress"].'</td>
    <td>'.$row["station_name"].'</td>
    <td>'.$row["User_name"].'</td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'No hay UCS ';
}

?>
