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
</head>
<body>
	<div id="wrapper">
		<div class="top-area">
			<a href="about.html" target="_blank">About</a>
			<a href="#" class="ml-a">Share</a>
		</div>
		<!-- /.top-area -->
		<div class="bottom-area">
			<a href="https://www.momentumww.com/insight" target="_blank" class="ml-a"><img src="images/logo.png" alt="logo"></a>
		</div>
		<!-- /.bottom-area -->
		<div class="middle-area home text-uppercase text-center">
			<div class="container">
				<div class="title">
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
</body>
</html>