<?php
    $title = "Home";
session_start();
?>

<!DOCTYPE html>
<html lang="en">

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
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active"><?php $title;?></li>
          </ol>

          <!-- Icon Cards-->
          <div class="row">
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-primary o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-graduation-cap"></i>
                  </div>
                  <div class="mr-5"><?php $tablename = "student";
					  $count = countNumberOfRows($tablename);
					  echo $count; 
					  ?> STUDENTS</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_students.php">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-warning o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-user-plus"></i>
                  </div>
                  <div class="mr-5"><?php $tablename = "teacher";
					  $count = countNumberOfRows($tablename);
					  echo $count; 
					  ?> TEACHERS</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_teachers.php">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-success o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-users"></i>
                  </div>
                  <div class="mr-5"><?php $tablename = "parent";
					  $count = countNumberOfRows($tablename);
					  echo $count; 
					  ?> PARENTS</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="view_parents.php">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-danger o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-bell"></i>
                  </div>
                  <div class="mr-5"><?php $tablename = "class";
					  $count = countNumberOfRows($tablename);
					  echo $count; 
					  ?> CLASSES</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="#">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
          </div>


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
