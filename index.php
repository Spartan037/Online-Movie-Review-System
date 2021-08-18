<?php 
session_start(); 

include "connection.php";
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>MCU</title>
	  </head>
  <body>
       <div style=" background-image: linear-gradient(to top, #ffff04, #eca522, #af5d34, #5b2c2b, #000000);">
		<?php include 'navbar.html';  ?>
		<img src="images/Main.jpg" alt="Movie-Images" width=100%>
	   <footer>
       <div class="container">
     
  <h4 style="text-align: center; background-color: lightgrey; width: 100%;"> &copy; Marvel Studios</h4>
       </div>
   </footer>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
  </body>
</html>