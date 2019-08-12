
<?php 
session_start();
error_reporting(0);
include('includes/db.php');
if(isset($_POST['submit']))
  {
    $fname=$_POST['Name'];
    $mobno=$_POST['MobileNo'];
    $email=$_POST['Email'];
    $password=md5($_POST['Pass']);

    $ret=mysqli_query($con, "select Email from customers where Email='$email' || MobileNo='$mobno'");
    $result=mysqli_fetch_array($ret);
    if($result>0){
$msg="This email or Contact Number already associated with another account";
    }
    else{
    $query=mysqli_query($con, "insert into customers(Name, MobileNo, Email,  Pass) value('$fname', '$mobno', '$email', '$password' )");
    if ($query) {
    $msg="You have successfully registered. Please login to book a service";
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }
}
}

 ?>



<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Ger garage Service Management System</title>
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

        <script src="assets/js/modernizr.min.js"></script>


        <script type="text/javascript">
function checkpass()
{
if(document.signup.password.value!=document.signup.repeatpassword.value)
{
alert('Password and Repeat Password field does not match');
document.signup.repeatpassword.focus();
return false;
}
return true;
} 

</script>

    </head>


    <body class="account-pages">

        <!-- Begin page -->
        <div class="accountbg" style="background: url('images/bg2.jpg');background-size: auto;background-position: center top;"></div>

        <div class="wrapper-page account-page-full">

            <div class="card">
                <div class="card-block">

                    <div class="account-box">

                        <div class="card-box p-5">
                            <h3 class="text-uppercase text-center pb-4">
                                <a href="../index.php" class="text-success">
                                    <span>Sign Up</span>
                                </a>
                            </h3>
                                                <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>

                            <form class="form-horizontal" action="" name="signup" method="post" onsubmit="return checkpass();">

                                <div class="form-group row m-b-20">
                                    <div class="col-12">
                                        <label for="username">Full Name</label>
                                        <input class="form-control" type="text" id="fullname"name="Name" required="" placeholder="Enter Your Full Name">
                                    </div>
                                </div>

                                 <div class="form-group row m-b-20">
                                    <div class="col-12">
                                        <label for="username">Mobile Number</label>
                                        <input class="form-control" type="text" id="mobilenumber" name="MobileNo" required="" placeholder="Enter Your Mobile Number" maxlength="10" pattern="[0-9]+">
                                    </div>
                                </div>
                                

                                <div class="form-group row m-b-20">
                                    <div class="col-12">
                                        <label for="emailaddress">Email address</label>
                                        <input class="form-control" type="email" id="email" name="email" required="" placeholder="abc@gmail.com">
                                    </div>
                                </div>

                                <div class="form-group row m-b-20">
                                    <div class="col-12">
                                        <label for="password">Password</label>
                                        <input class="form-control" type="password" required="" id="password" name="pass" placeholder="Enter your password">
                                    </div>
                                </div>
                                 <div class="form-group row m-b-20">
                                    <div class="col-12">
                                        <label for="password">Repeat Password</label>
                                        <input class="form-control" type="password" required="" id="repeatpassword" name="repeatpassword" placeholder="Enter your password">
                                    </div>
                                </div>

                                <div class="form-group row m-b-20">
                                    <div class="col-12">

                                        <div class="checkbox checkbox-custom">
                                            <input id="remember" type="checkbox" checked="">
                                            <label for="remember">
                                                I accept <a href="terms-conditions.php" class="text-custom">Terms and Conditions</a>
                                            </label>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group row text-center m-t-10">
                                    <div class="col-12">
                                        <button class="btn btn-block btn-custom waves-effect waves-light" type="submit" name="submit">Sign Up Free</button>
                                    </div>
                                </div>

                            </form>

                            <div class="row m-t-50">
                                <div class="col-sm-12 text-center">
                                    <p class="text-muted">Already have an account?  <a href="customer_login.php" class="text-dark m-l-5"><b>Sign In</b></a></p>
                                </div>
                            </div>

                            <div class="m-t-40 text-center">
                <p class="account-copyright">2019 © Ger Garage Service Managment System</p>
            </div>
                        </div>
                    </div>

                </div>
            </div>

           

        </div>



        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/metisMenu.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>