<?php
error_reporting(0);
    $title = "Attendance view";
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
            <li class="breadcrumb-item active"><?php echo $title;?></li>
          </ol>
          
          <?php  
	  if(isset($_POST['view_attendance'])){
		  $class_name_id=$_POST['class_name'];
		  $subject_name_id=$_POST['subject_name'];		  
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
			$_SESSION["table_name"]=$table_name;

		
			

	  ?>
	  <h4><?php echo $subject_name ?> Attendance List.</h4>
	  

          <?php
			    $query1="SELECT * FROM $table_name";
    			$res1=mysqli_query($connection,$query1);
			?>

  			 <table style = width:100% id = "attendance">
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
   
    <th>Lecture Count</th>
       <th>Lectures Attended</th>
       <th>Attendance Percentage</th>
        </tr></thead>
            <tbody style = "text-align : center">
            <tr >
            <?php
						
				$qry="SELECT *,($query_string) as count from $table_name";
				$res=mysqli_query($connection,$qry);		
                while( $rows = mysqli_fetch_assoc($res)){
						for($i=0;$i<2;$i++){
				?>
            
				<td><?php echo $rows[$columns_array[$i]];?></td>
				 
                <?php
				}
					?>
				 <td><?php echo $lecture_count; ?></td>
				 <?php
					$lecture_attended = $lecture_count - $rows['count'];
					?>
				 <td><?php echo $lecture_attended; ?></td>
				  <?php
					$percentage = ($lecture_attended / $lecture_count) * 100;
					?>
				 <td><?php echo $percentage ; ?> %</td>
				 
				 <?php 
		
					echo "</tr>";
				}
			
                ?>            
            </tbody>
            
            </table>
            
            	<br>
           <button class = "btn btn-primary" onclick="printPage()" style = "float : right"> DOWNLOAD </button>
            

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- /.content-wrapper -->

    </div>
    <?php
        include_once ("includes/footer.php");
    ?>

  </body>
  <script>
	function printPage(){
    html = document.getElementById('attendance').outerHTML;
    var mystyle;
    mystyle = '<link rel="stylesheet" href="table.css" media="all"/>';
    // Opening an untitled page where print view of ID cards is shown
    var w = window.open("");
    // Attaching style (.css) with html
  
    w.document.write( mystyle+html);
		w.window.print();
			
}</script>

</html>
