<?php
   include("connection.php");
   session_start();
   $error ="";
   $active="";
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql = "SELECT id FROM adminlogin WHERE username = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row[0]['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
        
         $_SESSION['username']= $myusername;
         $_SESSION['login_user'] = $myusername;
         
         header("location: welcome.php");
      }else {
         $error = "Invalid Username or Password !";
      }
   }
?>
<html>
   
   <head>
      <title>Login Page</title>
      <link rel="stylesheet"type="text/css" href="login.css">     
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Admin Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post">
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><b><?php echo $error; ?></b></div><br>
                  <label for="uname"><b>Username</b></label><input type = "text" name = "username" class = "box"placeholder="Enter your Name"/><br /><br />
                  <label for="uname"><b>Password</b></label><input type = "password" name = "password" class = "box"placeholder="Enter your Password" /><br/><br />
                  <button type="submit"name="submit">Login</button><br />
               </form>
               
              
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>