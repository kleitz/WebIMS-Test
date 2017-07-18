<?php
// Initialize the session
session_start();
 
// If session variable is not set it will redirect to login page
if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
  header("location: login.php");
  exit;
}
?>
<?php include("../Admin/includes/header.php");?>


<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>WebIMS Admin</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        
        <div class="page-header">
     <h3><center><b><?php echo $_SESSION['username']; ?></b>.Welcome To WebIMS.</h3></center>
     <div id="green"><font color="green">Action Menu
	        
            <li>User Management</li>
        <ul>
            <li><a href='users.php'>View Users</a></li>
            
            <li><a href="#" onClick="window.open('register.php','pagename','resizable,height=450,width=850'); 
    return false;">Add New User</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="register.php" target="_blank">Add New User</a></noscript> </li> 
        </ul> 
            <li>Shelter Management</li> 
            <ul><li><a href="#" onClick="window.open('edit_shelter_status.php','pagename','resizable,height=450,width=850'); 
    return false;">Edit Shelter's</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="edit_shelter-status.php" target="_blank">Edit Shelter's</a></noscript> </li> 
         </ul>
            <li>Resource Management</li>
            <ul>
            <li><a href="#" onClick="window.open('resources.php','pagename','resizable,height=450,width=850'); 
    return false;">Available Resources's</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="resources.php" target="_blank">Edit Shelter's</a></noscript> </li>     
            </ul>
             
            <li><a href="#" onClick="window.open('/WebIMS/chat/chat.txt','pagename','resizable,height=450,width=850'); 
    return false;">Save Chat</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="/WebIMS/chat/chat.txt" target="_blank">WebIMS</a></noscript> </li>           
        </ul>
        </font>	
</div>
       
     <div id="red"><font color="red">Add Tickets
     
     
     </div></font>
       
	<div id="black">Map in this section!
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d373354.33551868575!2d-81.49681938561949!3d29.611944663385763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88e665b99a0e10c3%3A0x4292ff17a4531e43!2sPalatka%2C+FL+32177!5e0!3m2!1sen!2sus!4v1499444673681" width="400" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        
        <div id="blue"><h3><font color="blue"> Current Active </h2><br>
		
			
                </div></font>
        


        
        <?php 
include('../includes/footer.php');
//include('includes/nav.php');
?>
    </body>
</html>
