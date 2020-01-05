<?php

session_start();

$pageRefreshed = isset($_SERVER['HTTP_CACHE_CONTROL']) &&($_SERVER['HTTP_CACHE_CONTROL'] === 'max-age=0' ||  $_SERVER['HTTP_CACHE_CONTROL'] == 'no-cache'); 
if($pageRefreshed == 1)
{
    unset($_SESSION["array"]);
    unset($_SESSION["responses"]);
    $array = array(0, 0, 0, 0,  0, 0 , 0, 0,0);
	$_SESSION["array"] = $array;
	$_SESSION["responses"]=array();
}
include ('db.php');
$questions = mysqli_query($conn, "SELECT * FROM questions;");

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>The Archetypes</title>
	
	<link rel="stylesheet" type="text/css" href="css/slick.css"/>
	<link rel="stylesheet" type="text/css" href="css/slick-theme.css"/>

	<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.min.css"/>

	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	<script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=5e0ce9f6e6d3310012cd7f42&product=inline-share-buttons&cms=sop' async='async'></script>
</head>
<body>
	<div id="wrapper">
		<div class="top-area">
			<a href="about.html" target="_blank">About</a>	
			<div class="popup ml-a" onclick="myFunction()">Share
  				<div class="popuptext" id="myPopup"><div class="sharethis-inline-share-buttons"></div></div>
			</div>
		</div>
		<!-- /.top-area -->
		<div class="bottom-area">
			<a href="https://www.momentumww.com/insight" target="_blank" class="ml-a"><img src="images/logo.png" alt="logo"></a>
		</div>
		<!-- /.bottom-area -->
		<div class="middle-area content">
			<div class="container">
				<div class="quiz-slider text-center">
					<?php 
					while($row = mysqli_fetch_assoc($questions)){
					?>
				    <div class="quiz-slick-item">
				    	<div class="title text-uppercase">
				    		<span><?php echo $row['start'];?></span> <?php echo $row['title'];?>
				    	</div>
				    	<?php 
				    		$question_id = $row['id'];
				    	 	$result=mysqli_query($conn,"SELECT count(*) as total from responses where question_id = '$question_id'");
							$data=mysqli_fetch_assoc($result);
							$column_name = "question_id";
							?>
				    	<div class="flip-area" data-item="<?php echo $data['total'];?>">
				    		<?php 
				    			$responses=mysqli_query($conn,"SELECT * from responses where $column_name = '$question_id'");
				    			$response=1;
				    			while($fetch_response = mysqli_fetch_assoc($responses)){?>

				    		<div class="flip_item">
				    			<input type="hidden" class="question_fetch" value="<?php echo $question_id; ?>">
				    			<input type="hidden" class="response_number" value="<?php echo $response; ?>">

				    			<img src="<?php echo $fetch_response['image'];?>" class="img-responsive" />
				    			<span class="col-sm-1"><?php echo $fetch_response['response'];?></span>
				    		</div>
				    		<?php
				    		$response++; 
				    	}
				    		?>
				    	</div>
				    </div>
				  <?php 
				}
				?>
				</div>
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
		function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
	    $(document).ready(function(){
	    	
	      $('.quiz-slider').slick({
	      	dots: true,
	      	adaptiveHeight: true,
	      	autoplay: false,
	      	arrows: false,
	      	accesibility: false,
            draggable: false,
            swipe: false,
            touchMove: false
	      });

	    $('.flip_item').click(function(){
	    	$(this).siblings().removeClass('fl_active');
	    	$(this).addClass('fl_active');
	      	setTimeout(function () {
	      		$('.slick-active').next().click();
	      	}, 500)
	      })
	     $('.flip_item').click(function(){
	    	var question_number = $(this).find('.question_fetch').val();
	    	var response_number = $(this).find('.response_number').val();
	    	$.ajax({
        		url:"calculation.php",
        		method:"POST",
        		data:{question:question_number,response:response_number},
        		success:function(data)
        			{
        				console.log(data);
          				if(question_number ==10){
          					$.ajax({
			        		url:"history.php",
			        		method:"POST",
			        		success:function(data)
					        			{
							   				var url= window.location.href;
				          					var splitted  = url.split("\quiz.php");
											splitted = splitted[0]+"reveal.php";
											window.location.href= splitted; 
					        			}
					      });
          					
							}     				
        			}
      });
	      })
	    });
	  </script>
</body>
</html>