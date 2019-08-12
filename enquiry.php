<?php
session_start();
error_reporting(0);
include('includes/db.php');

if(isset($_POST['submit']))
  {
    $uid=$_SESSION['sid'];
     $enquirytype=$_POST['enquirytype'];
     $description=$_POST['description'];
     $enqnumber = mt_rand(100000000, 999999999);
     
     $query=mysqli_query($con,"insert into enquiry(UserId,EnquiryNumber,EnquiryType,Description) value('$uid','$enqnumber','$enquirytype','$description')");
    if ($query) {
    $msg="Your enquiry has been sent successfully.We will Contact you soon";
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }

  
}





?>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Ger Garage Service Managment System</title>
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

    </head>


    <body>
 <div class="accountbg" style="background: url('images/bg2.jpg');background-size: auto;background-position: center top;"></div>
        <!-- Begin page -->
        <div id="wrapper">

            <?php include_once('includes/header.php');?>

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
 <div class="col-md-12"><!-- col-md-9 Begin -->
               
               <div class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <center><!-- center Begin -->
                           
                           <h2> Feel free to Contact Us</h2>
                           
                           <p class="text-muted"><!-- text-muted Begin -->
                               
                               If you have any questions, feel free to contact us. Our Customer Service work <strong>24/7</strong>
                               
                           </p><!-- text-muted Finish -->
                           
                       </center><!-- center Finish -->
                       

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="p-20">
                                                <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                     <form class="form" role="form" method="post" name="submit"><!-- form Begin -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                              <label class="col-2 col-form-label">Enquiry</label>
                                                        <div class="col-10">
                                                            <select name='enquirytype' id="enquirytype" class="form-control" required="true">
     <option value="">Enquiry Type</option>
      <?php $query=mysqli_query($con,"select * from enquirytype");
              while($row=mysqli_fetch_array($query))
              {
              ?>    
              <option value="<?php echo $row['EnquiryType'];?>"><?php echo $row['EnquiryType'];?></option>
                  <?php } ?>  
   </select>
                                                        </div>
                               
                           </div><!-- form-group Finish -->
                           
                           
                           
                           <div class="form-group">
                                                        <label class="col-2 col-form-label" for="example-email">Description</label>
                                                        <div class="col-10">
                                                            <textarea name="description" value="description" id="description" rows="12" cols="15" class="form-control"></textarea>
                                                        </div>
                                                    </div>
                                                    
                                                     <div class="form-group ">
                                                    
                                                        <div class="col-12">
                                                        <p style="text-align: center;">     <button type="submit" name="submit" class="btn btn-warning">Submit</button></p>
                                                        </div>
                                                    </div>
                       </form>
                       
                                                
                                                    
                                        </div>

                                    </div>
                                    <!-- end row -->



            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

<?php include_once('includes/footer.php');?>
        </div>
        <!-- END wrapper -->



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
