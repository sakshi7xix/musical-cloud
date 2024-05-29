<?php
  $host= "localhost";
  $user="rohan";
  $password="Rohanrajini24";

  $dbname="audiosearch";

//create connection

$con= mysqli_connect($host,$user,$password,$dbname);

//check connection

if(!$con){
  die("onnection failed: " .mysqli_connect_error());

}


 ?>
