<?php
session_start();
include ('db.php');
$array = $_SESSION["array"];
$responses = $_SESSION["responses"];
$max = array_search(max($array), $array);
$max++; 
$archetype = mysqli_query($conn, "SELECT * FROM archetypes where id = '$max';");
$archetype = mysqli_fetch_assoc($archetype);
$archetype_title = $archetype['title'];
$r1 = $responses[0];
$r2 = $responses[1];
$r3 = $responses[2];
$r4 = $responses[3];
$r5 = $responses[4];
$r6 = $responses[5];
$r7 = $responses[6];
$r8 = $responses[7];
$r9 = $responses[8];
$r10 = $responses[9];

$history =  mysqli_query($conn, "INSERT into history( `r1`,`r2`,`r3`,`r4`,`r5`,`r6`,`r7`,`r8`,`r9`,`r10`,`archetype`) VALUES ('$r1','$r2','$r3','$r4','$r5','$r6','$r7','$r8','$r9','$r10','$archetype_title')");

?>