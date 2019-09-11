<?php
session_start();



$mysqli = new mysqli('localhost', 'root', '', 'deadtime');

if (mysqli_connect_errno()) {
  echo json_encode(array('mysqli' => 'Failed to connect to MySQL: ' . mysqli_connect_error()));
  exit;
}
$User=$_SESSION['name']." ".$_SESSION['lastname'];
$page = isset($_GET['p'])? $_GET['p'] : '' ;
if($page=='view'){
    $result = $mysqli->query("SELECT id_inc,inc_date, User_name, inc_number, inc_description,inc_owner,inc_date_closed,
          comments,elapsed_time FROM ciscoincidents WHERE incStatus='opened'");
    while($row = $result->fetch_assoc()){
        ?>
        <tr>

          <td><?php echo $row["id_inc"] ?></td>
          <td><?php echo $row["inc_date"] ?></td>
          <td><?php echo $row["User_name"] ?></td>
          <td><?php echo $row["inc_number"] ?></td>
          <td><?php echo $row["inc_description"] ?></td>
          <td><?php echo $row["inc_owner"] ?></td>
          <td><?php echo $row["inc_date_closed"] ?></td>
          <td><?php echo $row["comments"] ?></td>
        

        </tr>
        <?php
    }
} else{

    // Basic example of PHP script to handle with jQuery-Tabledit plug-in.
    // Note that is just an example. Should take precautions such as filtering the input data.

    header('Content-Type: application/json');

    $input = filter_input_array(INPUT_POST);

    // $var  = $input['Issue_solution'] ;
    // $var2  = $input['Repaired_time'] ;

    // echo '<script type="text/javascript">alert("checando datos");</script>';
    // if (empty($var) || empty($var2) == 0) {
    //   echo '<script type="text/javascript">alert("Ingresar ambos datos");</script>';
    // }else if ($input['action'] == 'edit') {
    //   $mysqli->query("UPDATE issues SET Issue_status = 'closed' ,Issue_solution='" . $input['Issue_solution'] . "', Repaired_time='" . $input['Repaired_time'] . "' WHERE Issue_id='" . $input['Issue_id'] . "'");
    //   echo '<script type="text/javascript">alert("Ingresar ambos datos");</script>';
    // }



    if ($input['action'] == 'edit1')
     {


        // $id= "SELECT TIMEDIFF (inc_date,inc_date_closed) FROM ciscoincidents where id_inc='" . $input['id_inc'] . "'";
        // $result2 = mysqli_query($mysqli, $id);
        // $row2 =mysqli_fetch_row($result2);
        // $dato2=$row2[0];
        $mysqli->query("UPDATE ciscoincidents SET incStatus = 'closed',IncClosedby='" . $User . "',comments='" . $input['comments'] . "',inc_date_closed= CURRENT_TIMESTAMP  WHERE id_inc='" . $input['id_inc'] . "' AND inc_date_closed = '0'");

     }



    // else if ($input['action'] == 'delete') {
    //     $mysqli->query("UPDATE tabledit SET deleted=1 WHERE id='" . $input['id'] . "'");
    // } else if ($input['action'] == 'restore') {
    //     $mysqli->query("UPDATE tabledit SET deleted=0 WHERE id='" . $input['id'] . "'");
    // }

    mysqli_close($mysqli);

    echo json_encode($input);

}
?>
