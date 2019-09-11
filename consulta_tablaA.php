<?php
$connect = mysqli_connect("localhost", "root", "", "deadtime");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM actives_inventory
  WHERE inventorya_serialnumber LIKE '%".$search."%'
  OR inventorya_name LIKE '%".$search."%'
  OR inventorya_status LIKE '%".$search."%'
  OR inventorya_type LIKE '%".$search."%'
 ";
}else{
      $query = "SELECT inventorya_username, inventorya_type, inventorya_serialnumber, inventorya_assetnumber,inventorya_name, inventorya_condition,inventorya_status,inventorya_comments
      FROM actives_inventory WHERE inventorya_status != 'Consumo'";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table-sm table-hover table-bordered table-striped table-light">
   <thead class="thead-dark">
    <tr>
    <th scope="col"><p class="text-center">Usuario</p></th>
    <th scope="col"><p class="text-center">Estatus</p></th>
    <th scope="col"><p class="text-center">Serie</p></th>
    <th scope="col"><p class="text-center">Asset</p></th>
    <th scope="col"><p class="text-center">Modelo</p></th>
    <th scope="col"><p class="text-center">Condicion</p></th>
    <th scope="col"><p class="text-center">Estatus</p></th>
    <th scope="col"><p class="text-center">Comentarios</p></th>
    </tr>
    </thead>
    </div>
    ';
 while($row = mysqli_fetch_array($result))
 {
  $output .=
  '<tr>
    <td><p class="text-center">'.$row["inventorya_username"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_type"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_serialnumber"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_assetnumber"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_name"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_condition"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_status"].'</p></td>
    <td><p class="text-center">'.$row["inventorya_comments"].'</p></td>
  </tr>';
 }
 echo $output;
}
else
{
 echo 'No se encontraron datos';
}
?>
