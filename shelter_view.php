<?php
/*
// mysql_connect("database-host", "username", "password")
$conn = mysql_connect("localhost","root","root") 
            or die("cannot connected");
 
// mysql_select_db("database-name", "connection-link-identifier")
@mysql_select_db("test",$conn);
*/
 
/**
 * mysql_connect is deprecated
 * using mysqli_connect instead
 */
 
$databaseHost = 'localhost';
$databaseName = 'webims';
$databaseUsername = 'root';
$databasePassword = '';
 
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
?>

<?php
//including the database connection file
//include_once("includes/config.php");
include_once("includes/header.php"); 
//fetching data in descending order (lastest entry first)
//$result = mysql_query("SELECT * FROM users ORDER BY id DESC"); // mysql_query is deprecated
$result = mysqli_query($mysqli, "SELECT * FROM status ORDER BY id DESC"); // using mysqli_query instead
?>
 
<html>
<head>    
    <title>Shelter Status</title>
</head>
 
<body><center>
    <b><font size="5"><font color="green">Current Shelter Status</h2><BR></font></font>
    

    <table width='80%' border=0>
        <tr bgcolor='#4CAF50'>
            <td>Name</td>
            <td>Adult</td>
            <td>Children</td>
            <td>LEO</td>
            <td>EMS</td>
            <td>Pets</td>
            <td>Status</td>
            
        </tr>
        <?php 
        //while($res = mysql_fetch_array($result)) { // mysql_fetch_array is deprecated, we need to use mysqli_fetch_array 
        while($res = mysqli_fetch_array($result)) {         
            echo "<tr>";
            echo "<td>".$res['name']."</td>";
            echo "<td>".$res['adult']."</td>";
            echo "<td>".$res['children']."</td>"; 
            echo "<td>".$res['leo']."</td>"; 
            echo "<td>".$res['ems']."</td>"; 
            echo "<td>".$res['pets']."</td>"; 
            echo "<td>".$res['status']."</td>"; 
            
            
            
        }
        ?>
    </table></center><BR><BR><hr>
    <?php
    include_once ("includes/footer.php");
    ?>
</body>
</html>