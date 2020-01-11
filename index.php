<?php
session_start();
$array = array(0, 0, 0, 0,  0, 0 , 0, 0,0);
$_SESSION["array"] = $array;
$_SESSION["responses"]=array();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>The Archetypes</title>

	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	<script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=5e0ce9f6e6d3310012cd7f42&product=inline-share-buttons&cms=sop' async='async'></script>
</head>
<body>
	<div id="wrapper">
		<div class="top-area">
			<a href="about.html" target="_blank">About</a>
			<div class="popup ml-a" onclick="myFunction()"><a href="#">Share</a>
  <div class="popuptext" id="myPopup"><div class="sharethis-inline-share-buttons"></div></div>
</div>
		</div>
		<!-- /.top-area -->
		<div class="bottom-area">
			<a href="https://www.momentumww.com/insight" target="_blank" class="ml-a"><img style="float: right;" height="15%" width="15%" src="images/logo.png" alt="logo"></a>
		</div>
		<!-- /.bottom-area -->
		<div class="middle-area home text-uppercase text-center">
			<div class="container">
				<div class="title">
					<img width="200px" src="images/momentum.bmp"><br>
					<span>the</span> archetypes
				</div>
				<p>discover your archtype</p>
				<a class="btn" href="quiz.php">Start</a>
			</div>
			<!-- /.conyainer -->
		</div>
		<!-- /.middle-area -->
	</div>
	<!-- /#wrapper -->
	<script src="js/jquery.min.js"></script>
	<script>
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
$("body").click(function(e){

  
    });
</script>
</body>
</html>