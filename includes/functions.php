<?php
include_once ("connection.php");

function getAllStudents($condition =1){
    global $connection;
    $sql = "SELECT * FROM studentdetails WHERE $condition";
    $result = mysqli_query($connection, $sql);
    return $result;
}

function getAllMarks($condition =1){
    global $connection;
    $sql = "SELECT * FROM studentmarks WHERE $condition";
    $result = mysqli_query($connection, $sql);
    return $result;
}
function getLoggedInTeacherName($loggedInID){
    global $connection;
    $query = "SELECT * FROM teacher WHERE teacher_id = $loggedInID";
    $teacher_details = mysqli_query($connection,$query);
    //checkQueryResult($employee_details);
    if($row = mysqli_fetch_assoc($teacher_details)){
        return ($row['teacher_name']);
    }
}
function countNumberOfRows($tablename){
	global $connection;
	$sql = "select * from $tablename";
	$result =  mysqli_query($connection,$sql);
	$count = mysqli_num_rows($result);
	return $count;
}