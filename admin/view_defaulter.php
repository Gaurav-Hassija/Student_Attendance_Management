<?php
    $title = "Home";
session_start();
$table_name = $_SESSION['table_name'];
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
	  if(isset($_POST['view_defaulter'])){
		  $class_name_id=$_POST['class_name'];
		  $subject_name_id=$_POST['subject_name'];		  
	  }
			$sql = "select * from $table_name";
			/*$sql="select class_name from class where class_id = $class_name_id";*/
			$result=mysqli_query($connection,$sql);
			$row=mysqli_num_fields($result);
			$total_num_lecs = $row - 2;
			echo $total_num_lecs;
?>
      <!-- <?php
			$class_name=$row['class_name'];
			$sql1="select subject_name from subject where subject_id = $subject_name_id";
			$result1=mysqli_query($connection,$sql1);
			$row1=mysqli_fetch_assoc($result1);
			$subject_name=$row1['subject_name'];
			$table_name = $class_name."_".$subject_name;
			$_SESSION["table_name"]=$table_name;

		
			

	  ?>
	  

          <?php
			    $query1="SELECT * FROM $table_name";
    			$res1=mysqli_query($connection,$query1);
			?>

  			 <table style="width:100%">
        <thead>
    <tr>
       <?php
		$columns = mysqli_fetch_fields($res1);
		foreach($columns as $col){
			?>
		<th><?php echo $col->name; ?></th>
       <?php
		}
		?>
        </tr></thead>
            <tbody>
            <tr>
            <?php
                while( $rows = mysqli_fetch_assoc($res1)){
					foreach($columns as $column){	
                    ?>
            
                <td><?php echo $rows[$column->name];?></td>
			
				 
                <?php
				}
					echo "</tr>";
				}
                ?>  -->
				 
				          
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
