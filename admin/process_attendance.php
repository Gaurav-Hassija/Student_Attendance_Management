<?php
session_start();
require_once("../includes/connection.php");
$column_name=$_SESSION['column_name'];
$table_name=$_SESSION['table_name'];

if(isset($_POST['submit_attendance'])){
	if(!empty($_POST['check_list'])){
		foreach($_POST['check_list'] as $selected){
			$absent[] = $selected; 
			
		}
	}
}



for($i=0;$i<sizeof($absent);$i++){
$sql = "update $table_name set $column_name = 1 where roll_no =$absent[$i]";

	
	$result=mysqli_query($connection,$sql);
	if(isset($result)){
		
	}
	
}
header("Location:attendance.php");
  




?>