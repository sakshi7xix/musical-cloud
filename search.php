<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Search results</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
  
<form method="POST" action="search.php">
  <input type="text" name="q" placeholder="Enter query"/>
  <input type="submit" name="search" value="Search" />
</form>

</body>

</html>


<?php
    error_reporting(E_ALL);
    ini_set('display_errors',1);

    include_once('db.php'); //Connect to database
    if(isset($_POST['q'])){
        $q = $_POST['q'];

    //get required columns
    $query = mysqli_query($conn, "SELECT * FROM `words` WHERE `englishWord` LIKE '%$q%' OR `yupikWord` LIKE '%$q%'") or die(mysqli_error($conn)); //check for query error
        $count = mysqli_num_rows($query);
if($count == 0){
  $output = '<h2>No result found</h2>';
}else{
  while($row = mysqli_fetch_assoc($query)){
    $output .= '<h2>'.$row['yupikWord'].'</h2><br>';
    $output .= '<h2>'.$row['englishWord'].'</h2><br>';
    $output .= '<h2>'.$row['audio'].'</h2><br>';
  }
}
echo $output;
}else{
"Please add search parameter";
}
mysqli_close($conn);
?>
