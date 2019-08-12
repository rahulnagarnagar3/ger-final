<?php
$db=mysqli_connect("localhost","root","","ger_management_sys");

function getRealIpUser(){
    
    switch(true){
            
            case(!empty($_SERVER['HTTP_X_REAL_IP'])) : return $_SERVER['HTTP_X_REAL_IP'];
            case(!empty($_SERVER['HTTP_CLIENT_IP'])) : return $_SERVER['HTTP_CLIENT_IP'];
            case(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) : return $_SERVER['HTTP_X_FORWARDED_FOR'];
            
            default : return $_SERVER['REMOTE_ADDR'];
            
    }
    
}

/// begin add_cart functions ///

function add_cart(){
    
    global $db;
    
    if(isset($_GET['add_cart'])){
        
        $ip_add = getRealIpUser();
        
        $p_id = $_GET['add_cart'];
        
        $product_qty = $_POST['product_qty'];
        
        $s_id=$_GET['add_cart'];
        
                
        $check_product = "select * from cart where ip_add='$ip_add' AND (p_id='$p_id' AND s_id='$s_id')";
        
        $run_check = mysqli_query($db,$check_product);
        
        if(mysqli_num_rows($run_check)>0){
            
            echo "<script>alert('This product has already added in cart')</script>";
            echo "<script>window.open('details.php?pro_id=$p_id','_self')</script>";
            
        }else{
            
            $query = "insert into cart (p_id,s_id,ip_add,qty) values ('$p_id','$s_id','$ip_add','$product_qty')";
            
            $run_query = mysqli_query($db,$query);
            
            echo "<script>window.open('details.php?pro_id=$p_id','_self')</script>";
            
        }
        
    }
    
}

/// finish add_cart functions ///

/// finish getRealIpUser functions ///


//begin getPro function/

function getPro(){
    
    global $db;
    
    $get_products = "select * from products order by 1 DESC LIMIT 0,8";
    
    $run_products = mysqli_query($db,$get_products);
    
    while($row_products=mysqli_fetch_array($run_products)){
        
        $pro_id = $row_products['product_id'];
        
        $pro_title = $row_products['product_title'];
        
        $pro_price = $row_products['product_price'];
        
        $pro_img1 = $row_products['product_img1'];
        
        echo "
        
        <div class='col-md-4 col-sm-6 single'>
        
            <div class='product'>
            
                <a href='details.php?pro_id=$pro_id'>
                
                    <img class='img-responsive' src='admin/product_images/$pro_img1'>
                
                </a>
                
                <div class='text'>
                
                    <h3>
            
                        <a href='details.php?pro_id=$pro_id'>

                            $pro_title

                        </a>
                    
                    </h3>
                    
                    <p class='price' style='font-size:20px; color:red;'  >
                    
                        £ $pro_price
                    
                    </p>
                    
                    
                    
                    <p class='button'>
                    
                        <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                            View Details

                        </a>
                    
                                           
                    </p>
                
                </div>
            
            </div>
        
        </div>
        
        ";
        
    }
    
}

/// finish getPro functions ///

function getSer(){
    
    global $db;
    
    $get_services = "select * from service_type order by 1 DESC LIMIT 0,8";
    
    $run_services = mysqli_query($db,$get_services);
    
    while($row_services=mysqli_fetch_array($run_services)){
        
        $ID = $row_services['ID'];
        
        $ser_type = $row_services ['ServiceType'];
        
        $ser_price = $row_services['ServicePrice'];
        
        $ser_desc= $row_services['ServiceDesc'];
        
        echo "
        
        <div class='col-md-4 col-sm-6 single'>
        
            <div class='product'>
            
                              
                <div class='text'>
                
                    <h3>
            
                        <a href='services_details.php?ID=$ID'>

                            $ser_type

                        </a>
                    
                    </h3>
                    
                    <h3 style='color:green;'>
                     $ser_desc
                    
                    </h3>
                    
                    <p class='price' style='font-size:20px; color:red;'  >
                    
                        £ $ser_price
                    
                    </p>
                    
                    <p class='button'>
                    
                                            
                        <a class='btn btn-warning' href='landing.php?ID=$ID'>

                            <i class='fa fa-shopping-cart'></i> Book a Service
                        </a>
                        
                        
                    
                    </p>
                    
                   
                   
                
                </div>
            
            </div>
        
        </div>
        
        ";
        
    }
    
}

/// finish getSer functions ///

//begin get Product cat functions//
function getPCats(){
    
    
    
    global $db;
    
    $get_p_cats="select * from product_categories";
    $run_p_cats=mysqli_query($db,$get_p_cats);
    
    while($row_p_cats=mysqli_fetch_array($run_p_cats)){
        
        $p_cat_id=$row_p_cats['p_cat_id'];
        $p_cat_title=$row_p_cats['p_cat_title'];
     
        
        echo"
        
        <li>
        
       <a href='shop.php?p_cat=$p_cat_id'>
       
       $p_cat_title
       </a>
        
        </li>
        
        
        ";
    }
}




//begin get cat functions//
function getCats(){
    
    global $db;
    
    $get_cats="select * from categories";
    $run_cats=mysqli_query($db,$get_cats);
    
    while($row_cats=mysqli_fetch_array($run_cats)){
        
        $cat_id=$row_cats['cat_id'];
        $cat_title=$row_cats['cat_title'];
     
        
        echo"
        
        <li>
        
       <a href='shop.php?cat_id=$cat_id'>
       
       $cat_title
       </a>
        
        </li>
        
        
        ";
    }
}


//begin getpcatpro function//

function getpcatpro(){
    
    
      global $db;
      if(isset($_GET['p_cat'])){
          $p_cat_id=$_GET['p_cat'];
          
          $get_p_cat="select * from product_categories where p_cat_id='$p_cat_id'";
          
          $run_p_cat=mysqli_query($db,$get_p_cat);
          
          $row_p_cat=mysqli_fetch_array($run_p_cat);
              
          $p_cat_title=$row_p_cat['p_cat_title'];
           
          $p_cat_desc=$row_p_cat['p_cat_desc'];
          
          $get_products="select * from products where p_cat_id='$p_cat_id'";
          
          $run_products=mysqli_query($db,$get_products);
          
          $count=mysqli_num_rows($run_products);
          
          if($count==0){
              
              echo"
              
              <div class='box'>
              <h1>No Product Found in this Categories</h1>
              
              
              
              </div>
              
              
              ";
          }
          else{
              
              echo"
              
              <div class='box'>
              <h1>$p_cat_title</h1>
              
              <p>$p_cat_desc</p>
              
              </div>
              
              
              ";
              
          }
          
          while($row_products=mysqli_fetch_array($run_products)){
        $pro_id=$row_products['product_id'];
        $pro_title=$row_products['product_title'];
        $pro_price=$row_products['product_price'];
        $pro_img1=$row_products['product_img1'];
              
              echo"
              
              <div class='single center-responsive'>
        
        <div class='product'>
        <a href='details.php?pro_id=$pro_id'>
        
        <img class='img-responsive' src='admin/product_images/$pro_img1'>
        </a>
        
        <div class='text'>
        <h3>
        <a href='details.php?pro_id=$pro_id'>
        
        $pro_title
        </a>
        </h3>
        
        <p class='price'>
         £ $pro_price
        </p>
        
        <p class='button'>
        <a class='btn btn-default' href='details.php?pro_id=$pro_id'>
        
        View Details
        </a>
        
        
        
        </div>
        </div>
              ";
          }
          
      }
}


//getcatpro function//


function getcatpro(){
    
    global $db;
    
    if(isset($_GET['cat'])){
        $cat_id=$_GET['cat'];
        
        $get_cat="select * from category where ID='$cat_id'";
        
        
        $run_cat=mysqli_query($db,$get_cat);
        
        $row_cat=mysqli_fetch_array($run_cat);
        
        $cat_title= $row_cat['VehicleCat'];
        
       
        
        
        $get_cat="select * from products where cat_id='$cat_id' LIMIT 0,6";
        
        
        $run_products=mysqli_query($db,$get_cat);
        
        $count=mysqli_num_rows($run_products);
        
        if($count==0){
            echo"
            
            <div class='box'>
            <h1> No Product in this Category</h1>
            
            
            </div>
            
            ";
        }
        else{
             echo"
            
            <div class='box'>
            <h1>$cat_title</h1>
            
            
            
            
            </div>
            
            ";
        }
        
        while($row_products=mysqli_fetch_array($run_products)){
            
            $pro_id=$row_products['product_id'];
            
            $pro_title=$row_products['product_title'];
            
            $pro_price=$row_products['product_price'];
            
            $pro_desc=$row_products['product_desc'];
            
            $pro_img1=$row_products['product_img1'];
            
            
            echo"
            
               <div class='col-md-4 col-sm-6 center-responsive'>
                               <div class='product'>
                               
                                <a href='details.php?pro_id=$pro_id'>
                                
                                <img class='img-responsive' src='admin/product_images/$pro_img1'>
                                
                                
                                </a>
                                
                                <div class='text'>
                               <h3>
                                   <a href='details.php?$pro_id'>
                                       $pro_title
                                   </a>
                               </h3>
                               <p class='price'>£$pro_price</p>
                               <p class='buttons'>
                                   <a href='details.php?pro_id=$pro_id' class='btn btn-default'>View Details</a>
                                   
                               </p>
                           </div>
                               
                               </div>
                               
                               </div>
            
            
            
            
            
            
            ";
            
            
            
        }
    }
}


function items(){
    
    global $db;
    
    $ip_add = getRealIpUser();
    
    $get_items = "select * from cart where ip_add='$ip_add'";
    
    $run_items = mysqli_query($db,$get_items);
    
    $count_items = mysqli_num_rows($run_items);
    
    echo $count_items;
    
}

/// finish getRealIpUser functions ///

/// begin total_price functions ///

function total_price(){
    
    global $db;
    
    $ip_add = getRealIpUser();
    
    $total = 0;
    
    $select_cart = "select * from cart where ip_add='$ip_add'";
    
    $run_cart = mysqli_query($db,$select_cart);
    
    while($record=mysqli_fetch_array($run_cart)){
        
        $pro_id = $record['p_id'];
        
        $ser_id=$record['s_id'];
        
        $pro_qty = $record['qty'];
        
        $get_price = "select * from products where product_id='$pro_id'";
        
        $run_price = mysqli_query($db,$get_price);
        
        while($row_price=mysqli_fetch_array($run_price)){
            
            $sub_total = $row_price['product_price']*$pro_qty;
            
            $total += $sub_total;
            
        }
        
    }
    
    echo "$" . $total;
    
}

/// finish total_price functions ///

?>