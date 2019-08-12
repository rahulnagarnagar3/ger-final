<?php

include('includes/db.php');
$output='';
$sql="select * from serviceprice where s_id='".$_POST['typeid']."' ORDER BY ServicePrice";
$result=mysqli_query($con,$sql);
$output .='<option value="" disabled selected>Select Service Type-</option>';
while($row=mysqli_fetch($result)){

$output .='<option value="'.$row["id"].'">'.$row["ServicePrice"].'</option>';

}

echo $output;



?>