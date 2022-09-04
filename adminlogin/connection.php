<?php 
$db = new mysqli('localhost','root','','wms');
if(!$db) {
    die('Please check Your database connection'.mysqli_error($db));
}

?>