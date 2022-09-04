<?php
include('connection.php');

   $id = $_GET['i'];
    $query = "delete  from garbageinfo WHERE Id = '$id'" ;

    $data = mysqli_query($db,$query);
    
    if($data) {

        echo "<span></span>";
        ?>
        
        <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/EmailVerification/adminlogin/welcome.php">
        <?php
    }
    else {
        echo "<font color='red'>Failed to delete!";
    }

?>