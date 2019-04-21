<?php
session_start();
require_once("../includes/connection.php");
include("mail.php");
$column_name=$_SESSION['column_name'];
$table_name=$_SESSION['table_name'];

if(isset($_POST['send_mail'])){
	if(!empty($_POST['check_list'])){
		foreach($_POST['check_list'] as $selected){
			$students[] = $selected; 
		}
	}
}


for($i=0;$i<sizeof($students);$i++){
$sql = "select email from parent where student_id = $students[$i] and class_id =3";
$result = mysqli_query($connection,$sql);
$rows=mysqli_fetch_assoc($result);
$user_email[]= $rows['email'];
}
send_mail($user_email);
header("Location:index.php");

?>