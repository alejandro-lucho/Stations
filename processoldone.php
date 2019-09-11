<?php

$mysqli = new mysqli('localhost', 'root', '', 'deadtime');

if (mysqli_connect_errno()) {
  echo json_encode(array('mysqli' => 'Failed to connect to MySQL: ' . mysqli_connect_error()));
  exit;
}

$page = isset($_GET['p'])? $_GET['p'] : '' ;
if($page=='view'){
    $result = $mysqli->query("SELECT Issue_id,Issue_date, User_name, Production_line, Station_name,Station_Number,Cell_number,
          Issue_name,Issue_solution,Repaired_time FROM issues WHERE Issue_status='opened'");
    while($row = $result->fetch_assoc()){
        ?>
        <tr>

          <td><?php echo $row["Issue_id"] ?></td>
          <td><?php echo $row["Issue_date"] ?></td>
          <td><?php echo $row["User_name"] ?></td>
          <td><?php echo $row["Production_line"] ?></td>
          <td><?php echo $row["Station_name"] ?></td>
          <td><?php echo $row["Station_Number"] ?></td>
          <td><?php echo $row["Cell_number"] ?></td>
          <td><?php echo $row["Issue_name"] ?></td>
          <td><?php echo $row["Issue_solution"] ?></td>
          <td><?php echo $row["Repaired_time"] ?></td>

        </tr>
        <?php
    }
} else{

    // Basic example of PHP script to handle with jQuery-Tabledit plug-in.
    // Note that is just an example. Should take precautions such as filtering the input data.

    header('Content-Type: application/json');

    $input = filter_input_array(INPUT_POST);

    $var  = $input['Issue_solution'] ;
    $var2  = $input['Repaired_time'] ;

    // echo '<script type="text/javascript">alert("checando datos");</script>';
    // if (empty($var) || empty($var2) == 0) {
    //   echo '<script type="text/javascript">alert("Ingresar ambos datos");</script>';
    // }else if ($input['action'] == 'edit') {
    //   $mysqli->query("UPDATE issues SET Issue_status = 'closed' ,Issue_solution='" . $input['Issue_solution'] . "', Repaired_time='" . $input['Repaired_time'] . "' WHERE Issue_id='" . $input['Issue_id'] . "'");
    //   echo '<script type="text/javascript">alert("Ingresar ambos datos");</script>';
    // }



    if ($input['action'] == 'edit')
     {
        $mysqli->query("UPDATE issues SET Issue_status = 'closed' ,Issue_solution='" . $input['Issue_solution'] . "', Repaired_time='" . $input['Repaired_time'] . "' WHERE Issue_id='" . $input['Issue_id'] . "'");
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
