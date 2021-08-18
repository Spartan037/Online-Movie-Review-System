 <?php session_start();
    include 'connection.php';  
    include 'navloguser.html';
    ?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/rating_style.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Details</title>
	
    <script type="text/javascript">
  
   function change(id)
   {
      var cname=document.getElementById(id).className;
      var ab=document.getElementById(id+"_hidden").value;
      document.getElementById(cname+"rating").value=ab;

      for(var i=ab;i>=1;i--)
      {
         document.getElementById(cname+i).src="images/star2.png";
      }
      var id=parseInt(ab)+1;
      for(var j=id;j<=5;j++)
      {
         document.getElementById(cname+j).src="images/star1.png";
      }
   }

</script>

</head>
<body>
<div style="background-image: linear-gradient(to bottom, #000000, #1d000f, #270020, #290038, #0f0057);">
<?php

    $sql = "SELECT * FROM moviedetails";
	$result = mysqli_query($conn, $sql);
	$mid = $_GET["movieid"];
	if (mysqli_num_rows($result) > 0) 
	{
		echo '<div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">';
    while($row = mysqli_fetch_assoc($result)) 
	{
		if($row["mid"]==$mid)
		{	
			$mname = $row["moviename"];
			echo "<br><br>";
			$location1=$row["image"];
			
				echo "<br>";
				print"<p style='float:left;'><img src=\"$location1\" width=\"400\" height=\"650\"\/></p>";
                echo "<b><p style='font-family:Verdana; font-size:64px; margin-left:7em; color:red;'>" .$row["moviename"] . "</b>";
                echo "</p><br><br><p style='font-family:Verdana; font-size:24px; margin-left:18em; color:white;'>";
				echo "Year of Release:".$row["year"];
				echo "<br><br>";
				echo "Language: ".$row["language"];
				echo "<br><br>";
				echo  "Duration: ".$row["duration"];
				echo "<br><br>";
				echo "Genre:".$row["genre"];
				echo "<br><br>";
				echo "Director/s: ".$row["director"];
				echo "<br><br>";
				echo "Stars: ".$row["stars"];
				echo "<br><br></p><p style='font-family:Verdana; font-size:24px; color:white;'>";
				echo "Summary: ".$row["summary"];
				$avg = "SELECT avg(rating) as avg from rating where moviename='$mname'";
				$answer = mysqli_fetch_assoc(mysqli_query($conn,$avg));
				echo "</p><br><br>";
				echo "<p style='text-align:center; font-family:Verdana; font-size:24px; color:white;'>Rating: ".round($answer["avg"],2)." <img src=\"images/star.png\" width=\"25\" height=\"30\"\/>" ;
				echo "";
				if(isset($_SESSION["username"]))
				{
					echo '<form method="post" action="rating.php?id='.$row["moviename"].'&uname='.$_SESSION["username"].'">
  <div class="ratings">
	  <input type="hidden" id="php1_hidden" value="1">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php1" class="php" width=50px height=50px>
	  <input type="hidden" id="php2_hidden" value="2">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php2" class="php" width=50px height=50px>
	  <input type="hidden" id="php3_hidden" value="3">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php3" class="php" width=50px height=50px>
	  <input type="hidden" id="php4_hidden" value="4">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php4" class="php" width=50px height=50px>
	  <input type="hidden" id="php5_hidden" value="5">
	  <img src="images/star1.png" onmouseover="change(this.id);" id="php5" class="php" width=50px height=50px>
  </div>
  <input type="hidden" name="phprating" id="phprating" value="0">
  <input type="submit" value="Submit" name="rate">
  <br><br><br><br><br>
</form> ';
               
				}
				else
				{
					echo "<br><br>";
					echo '<a href="login.php" style="color:red; font-weight:bold;">LOGIN TO RATE</a></p><br><br><br>';
				}
			break;
		}	
	}
    echo '</div><div class="col-sm-2"></div></div>';
	   
} else {
    echo "0 results";
}

mysqli_close($conn);


?>
</div>
</body>
</html>