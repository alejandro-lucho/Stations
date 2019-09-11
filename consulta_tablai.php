<?php
$connect = mysqli_connect("localhost", "root", "", "deadtime");
$output = '';

if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM inventory
  WHERE inventory_name LIKE '%".$search."%'
  OR inventory_client LIKE '%".$search."%'
  OR inventory_area LIKE '%".$search."%'
 ";
}else{
      $query = "SELECT inventory_username, inventory_type, inventory_name, inventory_qty,inventory_client,inventory_area,
           inventory_comments FROM inventory";
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
    <th scope="col"><p class="text-center">Movimiento</p></th>
    <th scope="col"><p class="text-center">Modelo</p></th>
    <th scope="col"><p class="text-center">Cantidad</p></th>
    <th scope="col"><p class="text-center">Cliente</p></th>
    <th scope="col"><p class="text-center">Area</p></th>
    <th scope="col"><p class="text-center">Comentario</p></th>
    </tr>
    </thead>
    </div>
    ';
 while($row = mysqli_fetch_array($result))
 {
  $output .=
  '<tr>
    <td><p class="text-center">'.$row["inventory_username"].'</p></td>
    <td><p class="text-center">'.$row["inventory_type"].'</p></td>
    <td><p class="text-center">'.$row["inventory_name"].'</p></td>
    <td><p class="text-center">'.$row["inventory_qty"].'</p></td>
    <td><p class="text-center">'.$row["inventory_client"].'</p></td>
    <td><p class="text-center">'.$row["inventory_area"].'</p></td>
    <td><p class="text-center">'.$row["inventory_comments"].'</p></td>
  </tr>';
 }
 echo $output;
}
else
{
 echo 'No se encontraron datos';
}
?>
