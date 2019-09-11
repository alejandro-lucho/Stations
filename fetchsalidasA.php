
<?php
if(isset($_POST['action']))
{
	include('database_connection.php');

	$output = '';
	if($_POST["action"] == 'Serial')
	{
		$query = "
		SELECT inventorya_name FROM actives_inventory
		WHERE inventorya_serialnumber = :inventorya_serialnumber
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':inventorya_serialnumber'=>$_POST["query"]
			)
		);
		$result = $statement->fetchAll();
		$output .= '<option value="">Modelo</option>';

		foreach($result as $row)
		{
			$output .= '<option value="'.$row["inventorya_name"].'">'.$row["inventorya_name"].'</option>';
		}
	}
	if($_POST["action"] == 'nombreEU')
	{
		$query = "
		SELECT city FROM country_state_city
		WHERE state = :state
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':state'		=>	$_POST["query"]
			)
		);
		$result = $statement->fetchAll();
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["city"].'">'.$row["city"].'</option>';
		}
	}
	echo $output;
}
?>
