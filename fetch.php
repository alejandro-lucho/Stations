<?php
//fetch.php

if(isset($_POST['action']))
{
	include('database_connection.php');

	$output = '';

	if($_POST["action"] == 'lineaP')
	{
		$query = "
		SELECT Station_name FROM stations
		WHERE Station_model = :Station_model
		GROUP BY Station_name
		";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':Station_model'		=>	$_POST["query"]
			)
		);
		$result = $statement->fetchAll();
		$output .= '<option value="">Nombre Estacion</option>';
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["Station_name"].'">'.$row["Station_name"].'</option>';
		}
	}
	if($_POST["action"] == 'nombreE')
	{
		$query = "SELECT ucs_line FROM ucs_list WHERE station_name = :station_name GROUP BY ucs_line";
		$statement = $connect->prepare($query);
		$statement->execute(
			array(
				':station_name'		=>	$_POST["query"]
			)
		);
		$result = $statement->fetchAll();
		$output .= '<option value="">Area</option>';
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["ucs_line"].'">'.$row["ucs_line"].'</option>';
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
