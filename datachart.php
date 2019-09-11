<?php
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","","deadtime");

//$sqlQuery = "SELECT student_id,student_name,marks FROM issues";
$sqlQuery = "SELECT DISTINCT Production_line,IssueTotalClosed FROM issues order by IssueTotalClosed DESC";

$result = mysqli_query($conn,$sqlQuery);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

mysqli_close($conn);

echo json_encode($data);
?>
