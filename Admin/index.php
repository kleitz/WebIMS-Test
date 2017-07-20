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
<?php   
 $connect = mysqli_connect("localhost", "root", "root", "webims");  
 $sql = "SELECT * FROM incident ORDER BY id LIMIT 5";  
 $result = mysqli_query($connect, $sql);  
 ?>  


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
        <script src="jquery.js"></script>  
           <script src="js/bootstrap.js"></script>  
           <link href="css/bootstrap.css" rel="stylesheet" />
    </head>
    <body>
        
        <div class="page-header">
     <h3><center><b><?php echo $_SESSION['username']; ?></b>.Welcome To WebIMS.</h3></center>
     <div id="green"><font color="green"><center>Action Menu</center>
	        
            <li>User Management</li>
        <ul>
            <li><a href='users.php'>View Users</a></li>
            
            <li><a href="#" onClick="window.open('register.php','pagename','resizable,height=450,width=850'); 
    return false;">Add New User</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="register.php" target="_blank">Add New User</a></noscript> </li> 
            
             <li><a href="#" onClick="window.open('../sms/index.php','pagename','resizable,height=450,width=850'); 
    return false;">Send SMS Text</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="../sms/index.php" target="_blank">Send SMS Text</a></noscript> </li> 
            
        </ul> 
            <li>Shelter Management</li> 
            
            <ul><li><a href="#" onClick="window.open('edit_shelter_status.php','pagename','resizable,height=450,width=850'); 
    return false;">Edit Shelter's</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="edit_shelter-status.php" target="_blank">Edit Shelter's</a></noscript> </li> 
         </ul>
            
            <li>Incident Management</li>
            <ul>
                <li><a href="#" onClick="window.open('in_types.php','pagename','resizable,height=450,width=850'); 
    return false;">Incident Type's</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="in_types.php" target="_blank">Incident Types</a></noscript> </li> 
                
                
                
            </ul>
            <li>Resource Management</li>
            <ul>
            <li><a href="#" onClick="window.open('resources.php','pagename','resizable,height=450,width=850'); 
    return false;">Resources's</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="resources.php" target="_blank">Resource's</a></noscript> </li> 
            
            <li><a href="#" onClick="window.open('personnel.php','pagename','resizable,height=450,width=850'); 
    return false;">Personnel</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="personnel.php" target="_blank">Personnel</a></noscript> </li>
            </ul>
            
            <li>Utilities</li>
            <ul>
                <li><a href="#" onClick="window.open('facilities.php','pagename','resizable,height=450,width=850'); 
    return false;">Facilities</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="facilities.php" target="_blank">Facilities</a></noscript> </li> 
                
                <li><a href="#" onClick="window.open('documents.php','pagename','resizable,height=450,width=850'); 
    return false;">Documents</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="documents.php" target="_blank">Documents</a></noscript> </li> 
                
                <li><a href="#" onClick="window.open('photos.php','pagename','resizable,height=450,width=850'); 
    return false;">Photo's</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="photos.php" target="_blank">Photo's</a></noscript> </li> 
            
                <li><a href="#" onClick="window.open('/WebIMS/chat/chat.txt','pagename','resizable,height=450,width=850'); 
    return false;">Save Chat</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="/WebIMS/chat/chat.txt" target="_blank">Save Chat</a></noscript> </li>           
        
            </ul>
        </font>	
</div>
       
     <div id="red">
         <div>
             
             <a href="incident_add.php"><button>Create Ticket</button></a>
             <a href="../maps/index.php" target="_blank"><button>Map Incident</button></a><br>
             <table border="1">
                 <thead>
                     <tr><b><font color='green'>Current Incidents</b></font>
                     </tr>
                 </thead>
                 <tbody>
                     <tr><div class="container" style="width:500px; border:1px solid #ccc;">  
                <br />  
                <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">  
                <?php  
                     if(mysqli_num_rows($result) > 0)  
                     {  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo '<label><a href="../Admin/incident.php" .'.$row['name'].'" target="_blank">'.$row['name'].'</a></label>';  
                          }  
                     }  
                ?>  
                </marquee>  
                     </tr>
                 </tbody>
             </table>

         </div>
         
         
         
     
     
     </div></font>
       
	<div id="black">
            
            
  
        </div>
        
        <div id="blue"><h3><font color="blue"> Current Active </h2><br>
		
			
                </div></font>
        


        
        <?php 
include('../includes/footer.php');
//include('includes/nav.php');
?>
    </body>
</html>
