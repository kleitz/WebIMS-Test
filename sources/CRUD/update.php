<!DOCTYPE html>
<html>
<head>
	<title>Simple CRUD Application - UPDATE Operation</title>
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
		<form method="post" class="form-horizontal col-md-6 col-md-offset-3">
		<h2>UPDATE Shelter</h2>
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
			    <label for="input1" class="col-sm-2 control-label">Adults</label>
			    <div class="col-sm-10">
			      <input type="text" name="adult"  class="form-control" id="input1" placeholder="Adults" />
			    </div>
			</div>

			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Children</label>
			    <div class="col-sm-10">
			      <input type="text" name="children"  class="form-control" id="input1" placeholder="Children" />
			    </div>
			</div>
			
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">LEO</label>
			    <div class="col-sm-10">
			      <input type="text" name="leo"  class="form-control" id="input1" placeholder="LEO" />
			    </div>
			</div>
			
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Rescue</label>
			    <div class="col-sm-10">
			      <input type="text" name="ems"  class="form-control" id="input1" placeholder="Rescue" />
			    </div>
			</div>
			
			<div class="form-group">
			    <label for="input1" class="col-sm-2 control-label">Pets</label>
			    <div class="col-sm-10">
			      <input type="text" name="pets"  class="form-control" id="input1" placeholder="Pets" />
			    </div>
			</div>
			
			<div class="form-group">
			<label for="input1" class="col-sm-2 control-label">Status</label>
			<div class="col-sm-10">
				<select name="status" class="form-control">
					<option>Select Shelter Status</option>
					<option value="status1">Closed</option>
					<option value="status2">Stand Buy</option>
					<option value="status3">Open</option>
				</select>
			</div>
			</div>

			

			
			<input type="submit" class="btn btn-primary col-md-2 col-md-offset-10" value="submit" />
		</form>
	</div>
</div>
</body>
</html>