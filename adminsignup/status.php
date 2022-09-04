<?php
include_once('connection.php');
session_start();

$id = $_GET['i'];
$s = $_GET['s'];

if(isset($_POST['update'])){
  $Id= $_POST['id'];
   $status = $_POST['status'];
   
    $query = "update garbageinfo set status= '$status' WHERE Id= '$Id' " ;
   
    $data = mysqli_query($con,$query);
    
    
    if($data) {

        echo  "<div class = 'alert alert-success'><span class='fa fa-check'> Status Updated!</span></div>";  
        
       header("Location: http://localhost/EmailVerification/adminsignup/index.php", TRUE, 301);
       exit();
  
    }
    else {
	echo  "<div class = 'alert alert-danger'><span class='fa fa-check'> failed to  update Status !</span></div>";  
    }



}
?>
<!DOCTYPE html>
<html>
<head>
<title>Update status</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"type="text/css"href="styleupdate.css">  
</head>
<body>

   <form method="post" action="status.php"enctype="multipart/form-data">
   <div class="container contact">
	<div class="row">
		<div class="col-md-3">
			<div class="contact-info">
				<img src="images.jfif" alt="image"/>
				<h2>Edit Status</h2>
				<h4>Inform Users their requested compalin is Handle!</h4>
			</div>
		</div>
		<div class="col-md-9">
        <div class="form-group">
					<label class="control-label col-sm-2" for="status">Status:</label>
					<div class="col-sm-10">  
					<input type='hidden' value ="<?php echo "$id"; ?>" name='id'>        
                    <select class="form-control" id="status" name="status" value ="<?php echo "$s"; ?>"required >
						   <option class="form-control" >Pending</option>
                           <option class="form-control" >Completed</option>
						   <option class="form-control" >please do valid complain  </option>
					   </select>
					</div>
				  </div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
                  
					<button type="submit"  name="update" id="update"  class='btn btn-success' >Update Status</button>
				</div>
			</div>
		</div>
	</div>
</div>
   </form>
</div>
</body>
</html>