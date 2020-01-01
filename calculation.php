<?php
session_start();
include ('db.php');
$question = $_POST['question'];
$response = $_POST['response'];
array_push($_SESSION['responses'],$response);
print_r($_SESSION['responses']);
$array = array();
$array = $_SESSION['array']; 
for($i = 0 ; $i < 9 ; $i++) {
	$archetype=$i+1;

	$score = mysqli_query($conn, "SELECT * FROM response_values where question_id = '$question' AND response_no = '$response' AND archetype_no = '$archetype' ;");
	$row= mysqli_fetch_assoc($score);
	$score = $row['score'];
   $array[$i]=  $array[$i]+$score;
}
     $_SESSION["array"] = $array;
     print_r($_SESSION["array"]);
?>