<?php
    $title = "Home";
session_start();
$teacher_id=$_SESSION['teacher_id'];
	require_once("../includes/connection.php");
?>

    <!DOCTYPE html>
    <html lang="en">

    <?php
include_once ("includes/header.php");
?>
<link rel="stylesheet" href="css/custom.css">
        <body id="page-top">

            <?php

  include_once ("includes/navigation.php")
  ?>

                <div id="wrapper">

                    <!-- Sidebar -->
                    <?php
        include_once ("includes/siderbar.php");
        ?>
                        <div id="content-wrapper">

                            <div class="container-fluid">

                                <!-- Breadcrumbs-->
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="index.php">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active">attendance</li>
                                </ol>
                                <div class="row">
                                    <div class="col-md-12">
                                       <p class="attendance-report">attendance report</p>
                                        <div class="row">
                                            <div class="col-md-6">
                                            <div class="class-container">
                                               <form action="mark_attendance.php" method ="post">
                                                <strong><p>Select Class</p></strong>
                                            <select name="class_name" id="class_name" class="form-control"> 
                                                			<?php
									
                                    $query = "SELECT * FROM teacher_class WHERE teacher_id = $teacher_id";
                                    $result = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_assoc($result)){
                                        $class_id = $row['class_id'];
                                    $sql = "SELECT * FROM class WHERE class_id = $class_id";
									$result1 = mysqli_query($connection,$sql);
									while($row1 = mysqli_fetch_assoc($result1)){
                                        $class_name = $row1['class_name'];
                                       echo "<option value='$class_id'>$class_name</option>";
                                }
							}
                            ?>
                                            </select>
                                            <br>
                                             <strong><p>Select Subject</p></strong>
                                            <select name="subject_name" id="subject_name" class="form-control"> 
									<?php
									
                                    $query = "SELECT * FROM teacher_subject WHERE teacher_id = $teacher_id";
                                    $result = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_assoc($result)){
                                        $subject_id = $row['subject_id'];
                                    $sql = "SELECT * FROM subject WHERE subject_id = $subject_id";
									$result1 = mysqli_query($connection,$sql);
									while($row1 = mysqli_fetch_assoc($result1)){
                                        $subject_name = $row1['subject_name'];
                                       echo "<option value='$subject_id'>$subject_name</option>";
                                }
							}
                            ?>
                        </select>
                                            <br>
                                            
                                            <strong><p>Date</p></strong>
                                            <input type="date" class="form-control" name = "date">
                                            <br>
                                            <button type="submit" name="mark_attendance" class = "btn btn-primary">Mark Attendance</button>
 										
                                           </form>										
                                            </div>
                                            </div>
                                            
                                            <div class="col-md-6">
                                                <div class="class-container-2">
                                                    <strong><p>Attendance Overview</p></strong>
                                                                                                 
       <table class="table">
        <thead>
            <tr>
                <th>RollNo</th>
                <th>Name</th>
                <th>Attendance</th>
                <th>Commment</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <td>[Title]</td>
                <td>[Title]</td>
                <td>[Title]</td>
                <td>data</td>
            </tr>        
        </tfoot>
        <tbody>
            <tr>
                <td>[data]</td>
                <td>[data]</td>
                <td>[data]</td>
                <td>data</td>
            </tr>
            <tr>
                <td>[data]</td>
                <td>[data]</td>
                <td>[data]</td>
                <td>data</td>
            </tr>
            
            
        </tbody>
    </table>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                <div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">add attendace</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
                      <table class="table">
        <thead>
            <tr>
                <th>Rollno</th>
                <th>name</th>
                <th>Present</th>
            </tr>
        </thead>
        <tfoot>
               <?php
                $sql = "SELECT * FROM student";
									$result1 = mysqli_query($connection,$sql);
									if(mysqli_num_rows($result1) > 0){
									while($row1 = mysqli_fetch_assoc($result1)){
                                    ?>
			<tr>
                <td><?php echo $row1['student_roll_no'] ?></td>
                <td><?php echo $row1['student_name']?></td>
				<td><input type="checkbox" ></td>
            </tr> 
            <?php 
								}
								}		?>
        
									
			
                
        </tfoot>
        
    </table>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" data-dismiss="modal">submit</button>
        <button type="submit" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
               
                </div>
                        <!-- /.content-wrapper -->
                <?php
        include_once ("includes/footer.php");
    ?>

        </body>

    </html>
