<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Audio uploader</title>
    <?php

    include("config.php");

    // Simple PHP Upload Script:  http://coursesweb.net/php-mysql/

    $uploadpath = 'audios/';      // directory to store the uploaded files
    $max_size = 3000000;          // maximum file size, in KiloBytes
    $alwidth = 900;            // maximum allowed width, in pixels
    $alheight = 800;           // maximum allowed height, in pixels
    $allowtype = array('wav', 'mp3', 'm4a');        // allowed extensions

    if(isset($_FILES['fileup']) && strlen($_FILES['fileup']['name']) > 1) {
      $uploadpath = $uploadpath . basename( $_FILES['fileup']['name']);       // gets the file name
      $sepext = explode('.', strtolower($_FILES['fileup']['name']));
      $type = end($sepext);       // gets extension
      list($width, $height) = getimagesize($_FILES['fileup']['tmp_name']);     // gets image width and height
      $err = '';         // to store the errors

      // Checks if the file has allowed type, size, width and height (for images)
      if(!in_array($type, $allowtype)) $err .= 'The file: <b>'. $_FILES['fileup']['name']. '</b> not has the allowed extension type.';
      if($_FILES['fileup']['size'] > $max_size*1000) $err .= '<br/>Maximum file size must be: '. $max_size. ' KB.';
      if(isset($width) && isset($height) && ($width >= $alwidth || $height >= $alheight)) $err .= '<br/>The maximum Width x Height must be: '. $alwidth. ' x '. $alheight;

      // If no errors, upload the image, else, output the errors
      if($err == '') {
        if(move_uploaded_file($_FILES['fileup']['tmp_name'], $uploadpath)) {
          echo 'File: <b>'. basename( $_FILES['fileup']['name']). '</b> successfully uploaded:';
          echo '<br/>File type: <b>'. $_FILES['fileup']['type'] .'</b>';
          echo '<br />Size: <b>'. number_format($_FILES['fileup']['size']/1024, 3, '.', '') .'</b> KB';
          if(isset($width) && isset($height)) echo '<br/>Image Width x Height: '. $width. ' x '. $height;
          echo '<br/><br/>Image address: <b>http://'.$_SERVER['HTTP_HOST'].rtrim(dirname($_SERVER['REQUEST_URI']), '\\\\/').'/'.$uploadpath.'</b>';
        }
        else echo '<b>Unable to upload the file.</b>';
      }
      else echo $err;
    }


?>
<link rel="stylesheet" href="css/style.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

  <!-- </head>
  <body>
    <div style="margin:1em auto; width:333px; text-align:center;">
     <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="multipart/form-data">
      Upload File: <input type="file" name="fileup" /><br/>
      <input type="submit" name='submit' value="Upload" />
     </form>
    </div>  -->

    <!-- <form action="upload.php" method="post" enctype="multipart/form-data" style="padding-left: 30%; color red;">
      <input type="file" name='file'>
      <input type="submit" name="btn_upload" value="upload audio"> -->


    <!-- </form> -->

<section class="vh-100" style="background-color: #0a183d;">
  <div class="container one h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Upload Songs</p>

                <form class="mx-1 mx-md-4 forms1" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="multipart/form-data">

                  <div class="d-flex flex-row align-items-center mb-4">
                  
                    <div class="form-outline flex-fill mb-0">
                      <!-- <input id="form3" type="text" name="user_name"><br><br> -->
                      <!-- <input type="text"  class="form-control" name="user_name" /> -->
					  <input id="form3Example1c" class="form-control" type="text" name="">
            Upload File: <input type="file" name="fileup" />
                      <!-- <label class="form-label" for="form3Example1c">Username</label> -->
                    </div>
                  </div>


                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
				  <!-- <input id="button" type="submit" class="btn btn-primary btn-lg button1" value="Login"> -->
					<input id="button" type="submit" class="btn btn-primary btn-lg button1" value="upload">
          <!-- <input type="submit" name='submit' value="Upload" /> -->
                    <!-- <input button type="button" >Log In</button> -->
                  </div>

                  <!-- <a href="signup.php">Click to Signup</a><br><br> -->

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                  <img src="" class="img-fluid" alt="Sample image">

                </div>

             
            </div>
          </div>
          <button onclick="history.back()">Go Back</button>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="col-xl-6 col-lg-5 order-lg-1">
  <p>MUSICAL-CLOUD</p>
  <div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | made by <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="" target="_blank">Sakshi</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
  <div class="social-links">
    <a href=""><i class="fa fa-instagram"></i></a>
    <a href=""><i class="fa fa-pinterest"></i></a>
    <a href=""><i class="fa fa-facebook"></i></a>
    <a href=""><i class="fa fa-twitter"></i></a>
    <a href=""><i class="fa fa-youtube"></i></a>
  </div>
</div>
</div>
</div>
</footer>
  </body>
</html>






