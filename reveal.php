<?php 
session_start();
$array = $_SESSION["array"];
$responses = $_SESSION["responses"];
$max = array_search(max($array), $array);
$max++; 
include ('db.php');
$archetype = mysqli_query($conn, "SELECT * FROM archetypes where id = '$max';");
$archetype = mysqli_fetch_assoc($archetype);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>The Archetypes</title>

	<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.min.css"/>

	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/responsive.css" />
</head>
<body>
	<div id="wrapper">
		<div class="top-area">
			<a href="#">About</a>
			<a href="#" class="ml-a">Share</a>
		</div>
		<!-- /.top-area -->
		<div class="bottom-area">
			<a href="#">Archetypes</a>
			<a href="#" class="ml-a"><img src="images/logo.png" alt="logo"></a>
		</div>
		<!-- /.bottom-area -->
		<div class="middle-area content">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="title text-uppercase">
							<span>the</span> <?php echo $archetype['title'];?>	
						</div>
						<h5>Lorem ipsum dolor sit amet.</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae, impedit ut voluptatum cum temporibus quia perferendis rerum necessitatibus! Dignissimos fugit deleniti, quasi saepe possimus eos, laborum eius blanditiis totam ab mollitia numquam ea, inventore sequi corporis aliquid? Eaque, labore, voluptatum!</p>
					</div>
					<!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<div class="flip-images">
							<img src="<?php echo $archetype['image'];?>" class="img-responsive flip-left"sss />
							<img data-fancybox href="images/archetypes/A6 Description.png" src="images/archetypes/A6 Description.png" class="img-responsive flip-right" alt=" Description" />
						</div>
						<!-- /.flip-images -->
					</div>
					<!-- /.col-sm-6 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.conyainer -->
		</div>
		<!-- /.middle-area -->
	</div>
	<!-- /#wrapper -->

	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/slick.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox.min.js"></script>
	<script type="text/javascript">
	    $(document).ready(function(){
	    	$('[data-fancybox]').fancybox();
	    });

	  </script>
</body>
</html>