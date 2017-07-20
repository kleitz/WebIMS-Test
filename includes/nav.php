<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="menu.css" />
<title>WebIMS</title>
</head>
<body>
<div class="drop">
<ul class="drop_menu">
<li><a href='welcome.php'>Home</a></li>
<li><a href='#'>Shelters</a>
	<ul>
            <li><a href='shelter_view.php'>Shelter Status</a></li>
            <li> <a href='shelter_add.php'>Shelter Update</a> </li>
            <li></li>
	<li></li>
	</ul>
</li>
<li><a href='#'>Incidents</a>
	<ul>
	<li><a href='../WebIMS/Admin/index.php'>Incident Manager</a></li>
        <li><a href='resources.php'>Available Resources</a></li>
	<li></li>
	</ul>
</li>
<li><a href='#'>Maps</a>
	<ul>
            <li><a href="../WebIMS/maps/index.php">Google Map</a></li>
            <li><a href='evac.php'>Evacuation Routes</a></li>
            <li><a href='stormsurge.php'>Storm Surge</a></li>
            <li><a href='shelter_location.php'>Shelter Locations</a></li>
	</ul>
</li>


<li><a href="#" onClick="window.open('/WebIMS/chat/chat.php','pagename','resizable,height=450,width=850'); 
    return false;">WebIMS Chat</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="/WebIMS/chat/chat.php" target="_blank">WebIMS</a></noscript> </li>
<li><a href='#'>Files</a>
	<ul>
	<li><a href='document.php'>Documents Manager</a></li>
	<li><a href='files'>Download Files</a></li>
	</ul>
</li>
<li><a href='#'>About</a>
	<ul>
            <li></li>
            <li><a href='help.php'>Help</a></li> 
            <li><a href='stormsurge.php'>Storm Surge</a></li>
            <li><a href='shelter_location.php'>Shelter Locations</a></li>
	</ul>
</li>
<li style="float:right"><a href="/WebIMS/Admin/index.php" target="_blank">Admin</a></li>

</li>

        
</ul>
</div>
</body>
</html>

