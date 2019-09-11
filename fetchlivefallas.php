<style>
.my-custom-scrollbar {
position: relative;
height: 540px;
overflow: auto;
}
.table-wrapper-scroll-y {
display: block;
}
</style>

<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "deadtime");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM issues
  WHERE Production_line LIKE '%".$search."%'
  OR station_name LIKE '%".$search."%'
  OR User_name LIKE '%".$search."%'
  OR Issue_status LIKE '%".$search."%'


 ";
}
else
{
 $query = "SELECT Issue_date, User_name, Production_line, Station_name,Station_Number,Cell_number,
         Issue_name,Issue_solution,Repaired_time,Issue_comment,Station_Stopped,Issue_status,issueClosedby FROM issues order by Issue_date DESC";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-wrapper-scroll-y my-custom-scrollbar">
   <table class="table table-responsive table-sm table-hover table-bordered table-striped table-light">
   <thead class="thead-dark">
    <tr>
    <th ><p class="text-center">Fecha </p></th>
    <th ><p class="text-center">Abierto</p></th>
    <th ><p class="text-center">Linea </p></th>
    <th ><p class="text-center">Estacion </p></th>
    <th ><p class="text-center"> Estacion</p></th>
    <th ><p class="text-center">Celda</p></th>
    <th ><p class="text-center">Falla</p></th>
    <th ><p class="text-center">Solucion</p></th>
    <th ><p class="text-center">Tiempo</p></th>
    <th ><p class="text-center">Comentario</p></th>
    <th ><p class="text-center">Detenida</p></th>
    <th ><p class="text-center">Estatus</p></th>
    <th ><p class="text-center">Cerrado</p></th>
    </tr>
    </thead>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '

   <tr>
    <td><p class="text-center">'.$row["Issue_date"].'</p></td>
    <td><p class="text-center">'.$row["User_name"].'</td>
    <td><p class="text-center">'.$row["Production_line"].'</td>
    <td><p class="text-center">'.$row["Station_name"].'</td>
    <td><p class="text-center">'.$row["Station_Number"].'</td>
    <td><p class="text-center">'.$row["Cell_number"].'</td>
    <td><p class="text-center">'.$row["Issue_name"].'</td>
    <td><p class="text-center">'.$row["Issue_solution"].'</td>
    <td><p class="text-center">'.$row["Repaired_time"].'</td>
    <td><p class="text-center">'.$row["Issue_comment"].'</td>
    <td><p class="text-center">'.$row["Station_Stopped"].'</td>
    <td><p class="text-center">'.$row["Issue_status"].'</td>
    <td><p class="text-center">'.$row["issueClosedby"].'</td>
   </tr>

  </div>
  ';
 }

 echo $output;
}
else
{
 echo 'No hay Casos ';
}

?>
