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
			    $query1="SELECT * FROM student";
    			$res1=mysqli_query($connection,$query1);
			?>

  			 <table style="width:100%">
        <thead>
    <tr>
        <th>STUDENT ROLLNO</th>
        <th>STUDENT NAME</th>
        <th>STUDENT Email</th>
        <th>STUDENT CLASS</th>
        </tr></thead>
        <tr>
            <tbody>
            <?php
                while( $rows = mysqli_fetch_assoc($res1)){
                    ?>
            <tr>
                <td><?php echo $rows['student_roll_no'];?></td>
				<td><?php echo $rows['student_name'];?></td>
                <td><?php echo $rows['student_email'];?></td>
                <?php $class_id=$rows['class_id'];
				$sql="select class_name from class where class_id = $class_id";
				$res2=mysqli_query($connection,$sql);
				while($row = mysqli_fetch_assoc($res2)){
					?>
					<td> <?php echo $row['class_name'] ?></td>
					<?php
						}
					?>
                </tr>
                <?php
				}
                ?>            
            </tbody></table>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- /.content-wrapper -->

    </div>
    <?php
        include_once ("includes/footer.php");
    ?>

  </body>

</html>
