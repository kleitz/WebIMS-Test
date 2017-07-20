<?php
require_once ('includes/config.php');
if(isset($_POST) & !empty($_POST)){
	$name = mysql_real_escape_string($_POST['name']);
	$adult = mysql_real_escape_string($_POST['adult']);
	$children = mysql_real_escape_string($_POST['children']);
	$leo = $_POST['leo'];
	$ems = $_POST['ems'];
	$pets = $_POST['pets'];
	$status = $_POST['status'];
 
	$CreateSql = "INSERT INTO `status` (name, adult, children, leo, ems, pets, status) VALUES ('$name', '$adult', '$children', '$leo', '$ems', 'pets', 'status')";
	$res = mysqli_query($connection, $CreateSql) or die(mysqli_error($connection));
	if($res){
		$smsg = "Successfully inserted data, Insert New data.";
	}else{
		$fmsg = "Data not inserted, please try again later.";
	}
}
?>
<?php
    include_once ("includes/header.php");
    ?>
<!DOCTYPE html>
<html>
<head>
	<title>Create New Ticket</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
 
<link rel="stylesheet" href="styles.css" >
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
      <?php if(isset($smsg)){ ?><div class="alert alert-success" role="alert"> <?php echo $smsg; ?> </div><?php } ?>
      <?php if(isset($fmsg)){ ?><div class="alert alert-danger" role="alert"> <?php echo $fmsg; ?> </div><?php } ?>
		<form method="post" class="form-horizontal col-md-6 col-md-offset-3">
		<h2>Create New Incident Ticket</h2>
			<div class="form-group">
			<label for="input1" class="col-sm-2 control-label">Shelter</label>
			<div class="col-sm-10">
				<select name="name" class="form-control">
					<option>Select Shelter Name</option>
					<option value="Cresent City High School">Cresent City High School</option>
					<option value="Kelley Smith Elementry School">Kelley Smith Elementry School</option>
					<option value="Middelton Burney Elementry">Middelton Burney Elementry</option>
					<option value="Kelley Smith Elementry School">Kelley Smith Elementry School</option>
					
				</select>
			</div>
			</div>
 
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Adult</label>
			    <div class="col-sm-10">
			      <input type="text" name="adult"  class="form-control" id="input1" placeholder="Adult's Sheltered" />
			    </div>
			</div>
 
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Children</label>
			    <div class="col-sm-10">
			      <input type="text" name="children"  class="form-control" id="input1" placeholder="Children Sheltered" />
			    </div>
			</div>
			
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">LEO</label>
			    <div class="col-sm-10">
			      <input type="text" name="leo"  class="form-control" id="input1" placeholder="Law Enforcement at Shelter" />
			    </div>
			</div>
			
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Rescue</label>
			    <div class="col-sm-10">
			      <input type="text" name="ems"  class="form-control" id="input1" placeholder="Fire Rescue at Shelter" />
			    </div>
			</div>
			
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Pets</label>
			    <div class="col-sm-10">
			      <input type="text" name="pets"  class="form-control" id="input1" placeholder="Pets At Shelter" />
			    </div>
			</div>
			
			<div class="form-group">
			<label for="input1" class="col-sm-2 control-label">UpDate Status</label>
			<div class="col-sm-10">
				<select name="status" class="form-control">
					<option>Select Shelter Status</option>
					<option value="Closed">Closed</option>
					<option value="Stand By">Stand By</option>
					<option value="Open">Open</option>
				</select>
			</div>
			</div>
						
			<input type="submit" class="btn btn-primary col-md-2 col-md-offset-10" value="submit" />
		</form>
	</div>
</div><BR><HR>
    <?php
    include_once ("includes/footer.php");
    ?>
</body>
</html>