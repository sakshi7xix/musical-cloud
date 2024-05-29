<?php

include("config.php");

 ?>


 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
     <title>play audio</title>
     <style media="screen">
       audio{

         float: center;
       }
     </style>
   </head>
   <body>
     <div>

       <?php
          $fetchAudios =mysqli_query($con,"SELECT * FROM audios ORDER BY id DESC ");
          while($row=mysqli_fetch_assoc($fetchAudios))
          {
            $loaction=$row['location'];
            echo"<div>";

            echo "<audio src='".$location."' controls width='500px' height='200px'>";

            echo"</div>";

          }

        ?>

     </div>

   </body>
 </html>
