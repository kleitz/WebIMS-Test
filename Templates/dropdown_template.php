<?php
$link = mysqli_connect("localhost", "root","");
mysqli_select_db($link, "webims");

?>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
<body>
<form name="form1" action="" method="post">
<select>
    
<?php
$res=mysqli_query($link,"select * from shelter order by asc");
while($row=mysqli_fetch_array($res))
{
?> 
<option><?php echo $row["name"]; ?></option>

<?php                
}        

?>

</select>
</form>
</body>
</html>
