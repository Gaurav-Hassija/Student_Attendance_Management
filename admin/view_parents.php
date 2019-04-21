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
			    $query1="SELECT * FROM parent";
    			$res1=mysqli_query($connection,$query1);
			?>

  			 <table style="width:100%">
        <thead>
    <tr>
        <th>PARENT ID</th>
        <th>STUDENT NAME</th>
        <th>PARENT Email</th>
        <th>STUDENT ID</th>
        </tr></thead>
        <tr>
            <tbody>
            <?php
                while( $rows = mysqli_fetch_assoc($res1)){
                    ?>
            <tr>
                <td><?php echo $rows['parent_id'];?></td>
				<td><?php echo $rows['student_name'];?></td>
                <td><?php echo $rows['email'];?></td>
               	<td><?php echo $rows['student_id'];?></td>
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
