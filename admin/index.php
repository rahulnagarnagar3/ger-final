<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['Login']))
  {
    $adminuser=$_POST['admin_email'];
    $password=$_POST['admin_pass'];
    $query=mysqli_query($con,"select admin_id from admin where  admin_email='$adminuser' && admin_pass='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['adid']=$ret['admin_id'];
     header('location:dashboard.php');
    }
    else{
    $msg="Invalid Details.";
    }
  }
  ?>


<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>GGMS | Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        <link href="styles/bootstrap-337.min.css" rel="stylesheet" type="text/css"/>
        <link href="styles/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/style.css"/>

        <script src="assets/js/modernizr.min.js"></script>

    </head>


    <body class="login">
    
    <div class="accountbg" style="background: url('assets/images/bg-5.jpg');background-size: auto;background-position: center top;"></div>
    

  <div class="loginbox">
      
      <img src="assets/images/boss-512.png" class="avatar" alt="logo">
      <h1><a href="../index.php">Admin Login Here</a></h1>
      <form action="#" method="post">
          
          <p>Email</p>
          <input type="text" name="admin_email" placeholder="Enter Email">
          <p>Password</p>
          <input type="password" name="admin_pass" placeholder="Enter Password">
          
          <input type="submit" value="Login" name="Login">
          
          <a href="reset-password.php">Forgot your password</a>
          <br/>
          
          
      </form>
     
  </div>
  <?php include('includes/footer.php')?> 


        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/metisMenu.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="styles/bootstrap-337.min.css"></script>
        <script src="styles/style.css"></script>

    </body>
</html>