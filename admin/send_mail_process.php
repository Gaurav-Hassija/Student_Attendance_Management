<?php
session_start();
require_once("../includes/connection.php");
include("mail.php");
$column_name=$_SESSION['column_name'];
$table_name=$_SESSION['table_name'];
$class_id=$_SESSION['class_id'];

if(isset($_POST['send_mail'])){
	if(!empty($_POST['check_list'])){
		foreach($_POST['check_list'] as $selected){
			$students[] = $selected; 
		}
	}
}


for($i=0;$i<sizeof($students);$i++){
$sql = "select email,student_name from parent where student_id = $students[$i] and class_id =$class_id";
$result = mysqli_query($connection,$sql);
$rows=mysqli_fetch_assoc($result);
$user_email[]= $rows['email'];
$user_name[] = $rows['student_name'];
}
send_mail($user_email,$user_name);
header("Location:index.php");

?>