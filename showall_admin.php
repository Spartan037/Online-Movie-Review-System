 <?php session_start();
    include 'connection.php';  
    include 'admin_navbar.html';
    ?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>ShowAll</title>
</head>
<body>
   <?php

    $sql = "SELECT * FROM moviedetails";
	$result = mysqli_query($conn, $sql);
	echo'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
if (mysqli_num_rows($result) > 0) {
    $count=0;
    while($row = mysqli_fetch_assoc($result))
	{
		$location=$row["image"];
		echo'<html><body><a href="details_admin.php?movieid='.$row["mid"].'">';
		print"<img src=\"$location\" width=\"250\" height=\"350\"\/>";
		$count++;
		if($count==5)
		{
			echo'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			$count=0;
		}
		echo"&nbsp;&nbsp;&nbsp;&nbsp;";
		echo'</a></body></html>';
		
    }
		
} else {
    echo "0 results";
}
mysqli_close($conn);



?>

   <footer>
       
       <div class="container">
     
  <h4 style="text-align: center; background-color: lightgrey; width: 100%;"> &copy; MD. Obaidullah Al-Faruk</h4>
       </div>
   </footer>
</body>
</html>