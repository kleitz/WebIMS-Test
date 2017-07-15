<?php
// Initialize the session
session_start();
 
// If session variable is not set it will redirect to login page
if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
  header("location: login.php");
  exit;
}
?>
<?php
// Include config file
require_once ('/includes/header.php');
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: left; }
    </style>
    <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #0f5112;
    color: white;
}
<!--
TD{font-family: Arial; font-size: 10pt;}
<!--
</style>

</head>
<body>
 <div class="page-header">
     <h3><center><b><?php echo $_SESSION['username']; ?></b>.Welcome To WebIMS.</h3></center>
    
     
    
<body background="image/grayzz.png">
<center><p><P><P><P><P>
    
        <b><font size="5"></big><font color="green">Putnam County Florida Region 3<BR></font>
            <img src="image/regionmap.gif" width="175" height="150" alt="region3"/></font>
         


                    


    
      

<?php
// Include config file
require_once '/includes/footer.php';
?>
