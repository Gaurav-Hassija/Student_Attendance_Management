<?php
    $title = "Defaulter";
session_start();
$table_name=$_SESSION['table_name'];
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
            <li class="breadcrumb-item active"><?php echo $title;?></li>
          </ol>
<!--          

	  ?>-->
			<h4><?php echo "Send Mail." ?></h4>
	  

          <?php
			    $query1="SELECT * FROM $table_name";
    			$res1=mysqli_query($connection,$query1);
			?>
			 <form action="send_mail_process.php" method ="post">
  			 <table style="width:100%">
        <thead>
    <tr>
       <?php
		$count = mysqli_num_fields($res1);
		$lecture_count = $count - 2;
		
		$columns = mysqli_fetch_fields($res1);
		foreach($columns as $col){
		 $columns_array[]=$col->name;
		}	 
		$attended_array=$columns_array;
			array_splice($attended_array,0,1);
			array_splice($attended_array,0,1);
		$query_string=implode("+",$attended_array);
		
		for($i=0;$i<2;$i++){
			?>
			<th><?php echo $columns_array[$i]; ?></th>
			
			<?php	
		}
		?>
   
   <!-- <th>Lecture Count</th>
       <th>Lectures Attended</th>-->
       <th>Attendance Percentage</th>
       <th>Send Mail</th>
        </tr></thead>
            <tbody>
            <tr>
            <?php
						
				$qry="SELECT roll_no,name,((($query_string)-$lecture_count)/$lecture_count*100) as percentage from $table_name";
				$res=mysqli_query($connection,$qry);		
                while( $rows = mysqli_fetch_assoc($res)){
					if(abs($rows['percentage'])<50){
						for($i=0;$i<2;$i++){
				?>
            
				<td><?php echo $rows[$columns_array[$i]];?></td>
				 
                <?php
				}
					?>
				
				  <?php
					?>
				 <td><?php echo abs($rows['percentage']) ; ?> %</td>
				 <td><input type="checkbox" name = "check_list[]" value=<?php echo $rows['roll_no']; ?>>
           		</td>
				 
				 <?php 
					}
					echo "</tr>";
				}
			
                ?>            
            </tbody>
            
            </table>
            
            	<div class="modal-footer">
        <button type="submit" class="btn btn-primary" name="send_mail">Send Mail</button>
			</div>
            </form>


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
