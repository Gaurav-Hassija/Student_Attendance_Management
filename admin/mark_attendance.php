<?php
    $title = "Home";
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<style>
        table,td,th{
            border:3px solid black;
            border-collapse: collapse;
            
        }
	</style>
</head>

<?php
include_once ("includes/header.php");
?>
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
            <li class="breadcrumb-item active"><?php $title;?></li>
          </ol>
                	<?php  
	  if(isset($_POST['mark_attendance'])){
		  $class_name_id=$_POST['class_name'];
		  $subject_name_id=$_POST['subject_name'];
		  $date = $_POST['date'];
		  $column_name = str_replace("-","_",$date);
		  $_SESSION['column_name']=$column_name;
		  
	  }
			$sql="select class_name from class where class_id = $class_name_id";
			$result=mysqli_query($connection,$sql);
			$row=mysqli_fetch_assoc($result);
			$class_name=$row['class_name'];
			$sql1="select subject_name from subject where subject_id = $subject_name_id";
			$result1=mysqli_query($connection,$sql1);
			$row1=mysqli_fetch_assoc($result1);
			$subject_name=$row1['subject_name'];
			$table_name = $class_name."_".$subject_name;
			$_SESSION['table_name']=$table_name;

			$sql2="alter table $table_name add $column_name varchar(255) NOT NULL DEFAULT 0";
			$res=mysqli_query($connection,$sql2);
			

	  ?>
	  

      <!-- Modal Header -->
            <h4>Add Attendance</h4>
        
            <!-- Modal body -->
                     <form action="process_attendance.php" method ="post">
                      <table class="table">
        <thead>
            <tr>
                <th>Rollno</th>
                <th>name</th>
                <th>Mark Absent</th>
            </tr>
        </thead>
        <tfoot>
               <?php
                $sql = "SELECT * FROM $table_name";
			
									$result1 = mysqli_query($connection,$sql);
									if(mysqli_num_rows($result1) > 0){
									while($row1 = mysqli_fetch_assoc($result1)){
                                    ?>
			<tr>
                <td><?php echo $row1['roll_no'] ?></td>
                <td><?php echo $row1['name']?></td>
				<td><input type="checkbox"  name = "check_list[]" value=<?php echo $row1['roll_no']; ?>> 
           		</td>
            </tr> 
            <?php 
								}
								}		
			?>
        
									
			
                
        </tfoot>
        
    </table>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" name="submit_attendance">submit</button>
			</div>
    
			</form>
        </div>
        <!-- /.container-fluid -->

      </div>
        <?php
		
		?>
		
		
      <!-- /.content-wrapper -->

    </div>
    <?php
        include_once ("includes/footer.php");
    ?>

  </body>

</html>
