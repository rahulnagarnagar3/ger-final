<?php  
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['adid']==0)) {
  header('location:logout.php');
  } else{
if(isset($_POST['submit']))
  {
  $product_title = $_POST['product_title'];
    $product_cat = $_POST['product_cat'];
    $cat = $_POST['cat'];
    $product_price = $_POST['product_price'];
    $product_keywords = $_POST['product_keywords'];
    $product_desc = $_POST['product_desc'];
    $p_id = $_POST['product_id'];
    
    $product_img1 = $_FILES['product_img1']['name'];
    $temp_name1 = $_FILES['product_img1']['tmp_name'];
    move_uploaded_file($temp_name1,"product_images/$product_img1");
     
    $query=mysqli_query($con, "update  products set p_cat_id='$product_cat',cat_id='$cat',date=NOW(),product_title='$product_title',product_img1='$product_img1',product_keywords='$product_keywords',product_desc='$product_desc',product_price='$product_price' where product_id='$p_id'"  );
    if ($query) {
    $msg="Products detail has been update.";
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

        <!-- Begin page -->
        <div id="wrapper">

          <?php include_once('includes/sidebar.php');?>

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->

            <div class="content-page">

                 <?php include_once('includes/header.php');?>

                <!-- Start Page content -->
                <div class="content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card-box">
                                    <h4 class="m-t-0 header-title">Update Parts Details</h4>
                                    <p class="text-muted m-b-30 font-14">
                                       
                                    </p>

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="p-20">
   <?php
 $pid=$_GET['p_id'];
$ret=mysqli_query($con,"select * from products where product_id='$pid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>

                                               <form class="form-horizontal" role="form" method="post" name="submit">
                                                   
                                                    <div class="form-group row">
                                                        <label class="col-2 col-form-label" for="example-email">Product Title</label>
                                                        <div class="col-10">
                                                            <input type="text" id="product_title" name="product_title" class="form-control" placeholder="product title" required="true" value="<?php echo $row['product_title'];?>" >
                                                        </div>
                                                    </div>

                                                      <div class="form-group row">
                                                        <label class="col-2 col-form-label" for="example-email">Product Price</label>
                                                        <div class="col-10">
                                                            <input type="text" id="product_price" name="product_price" class="form-control" maxlength="10" required="true" value="<?php echo $row['product_price'];?>" >
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label class="col-2 col-form-label" for="example-email">Product Image</label>
                                                        <div class="col-10">
                                                            <input type="img" id="product_img1" name="product_img1" class="form-control"  required="true" value="<?php echo $row['product_img1'];?>" >
                                                        </div>
                                                    </div>
                                                   
                                                   
<div class="form-group row">
                                                        <label class="col-2 col-form-label" for="example-email">Product Description</label>
                                                        <div class="col-10">
                                                            <input type="text" id="product_desc" name="product_desc" class="form-control"  required="true" value="<?php echo $row['product_desc'];?>" >
                                                        </div>
                                                    </div>
                                                   
<?php } ?>
                                                    
                                                    
                                                    

                                                    
                                              
                                                 
                                              
           <div class="form-group row">
                                                    
                                                        <div class="col-12">
                                                            <p style="text-align: center;"> <button type="submit" name="submit" class="btn btn-info btn-min-width mr-1 mb-1">Update</button></p>
                                                        </div>
                                                    </div>

                                                </form>
                                                
                                            </div>
                                        </div>

                                    </div>
                                    <!-- end row -->

                                </div> <!-- end card-box -->
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->


        



                        <!-- end row -->





                    </div> <!-- container -->

                </div> <!-- content -->

             <?php include_once('includes/footer.php');?>
            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


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
<?php }  ?>