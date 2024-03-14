<?php
session_start(); 
error_reporting(0);
$con=mysqli_connect('localhost','root','','upi_payment_system');

if(!$con)
{
    echo "error";
}
// else
// {
//     echo "Sucessfully Connected";
// }

// http://localhost/Bikram/SRay_Website/admin/galleryedit.php?page=galleryedit&gid=1

?>
