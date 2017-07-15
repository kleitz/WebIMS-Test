<?php
require_once('connect.php');
$ReadSql = "SELECT * FROM `status`";
$res = mysqli_query($connection, $ReadSql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Current Shelter Status</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
 
<link rel="stylesheet" href="styles.css" >
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 
</head>
<body>
<div class="container">
	<div class="row">
	<h2>Current Shelter Status</h2><br>
	<a href="index.php">Add New Data</a><br/><br/>
	
		<table class="table "> 
		
		<thead> 
			<tr>
			<table width='80%' border=0>
        <tr bgcolor='#green'>
				<th>#</th> 
				<th>Shelter</th> 
				<th>Adults</th> 
				<th>Children</th> 
				<th>LEO</th> 
				<th>Rescue</th>
				<th>Pets</th>
				<th>Status</th>
				
			</tr> 
		</thead> 
		<tbody> 
		<?php 
		while($r = mysqli_fetch_assoc($res)){
		?>
			<tr> 
				<th scope="row"><?php echo $r['id']; ?></th> 
				<td><?php echo $r['name']; ?></td> 
				<td><?php echo $r['adult']; ?></td> 
				<td><?php echo $r['children']; ?></td> 
				<td><?php echo $r['leo']; ?></td> 
				<td><?php echo $r['ems']; ?></td>
				<td><?php echo $r['pets']; ?></td>
				<td><?php echo $r['status']; ?></td>
				<td>
					<!--a href="update.php?id=<?php echo $r['id']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
 
					<button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal<?php echo $r['id']; ?>">Delete</button>
 
					<!-- Modal -->
					  <div class="modal fade" id="myModal<?php echo $r['id']; ?>" role="dialog">
					    <div class="modal-dialog">
					    
					      <!-- Modal content-->
					      <div class="modal-content">
					        <div class="modal-header">
					          <button type="button" class="close" data-dismiss="modal">&times;</button>
					          <h4 class="modal-title">Delete File</h4>
					        </div>
					        <div class="modal-body">
					          <p>Are you sure?</p>
					        </div>
					        <div class="modal-footer">
					          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					          <a href="delete.php?id=<?php echo $r['id']; ?>"><button type="button" class="btn btn-danger"> Yes..! Delete</button></a>
					        </div>
					      </div>
					      
					    </div>
					  </div>
 
				</td>
			</tr> 
		<?php } ?>
		</tbody> 
		</table>
	</div>
</div>
 
  
 
 
<div id="confirm" class="modal hide fade">
  <div class="modal-body">
    Are you sure?
  </div>
  <div class="modal-footer">
    
    <button type="button" data-dismiss="modal" class="btn">Cancel</button>
  </div>
</div>
 
</body>
</html>