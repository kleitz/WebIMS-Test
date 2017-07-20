
   <?php   
 $connect = mysqli_connect("localhost", "root", "root", "webims");  
 $sql = "SELECT * FROM incident ORDER BY id LIMIT 5";  
 $result = mysqli_query($connect, $sql);  
 ?>  
 <html>  
      <head>  
           <meta name="viewport" content="initial-scale=1.0, user-scalable=no">  
           <meta charset="utf-8">  
           <title>Webslesson Tutorial</title>  
           <script src="jquery.js"></script>  
           <script src="js/bootstrap.js"></script>  
           <link href="css/bootstrap.css" rel="stylesheet" />  
      </head>  
      <body>  
           <div class="container" style="width:500px; border:1px solid #ccc;">  
                <br />  
                <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">  
                <?php  
                     if(mysqli_num_rows($result) > 0)  
                     {  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo '<label><a href="'.$row['name'].'" target="_blank">'.$row['name'].'</a></label>';  
                          }  
                     }  
                ?>  
                </marquee>  
                <br />                 
           </div>  
      </body>  
 </html>  