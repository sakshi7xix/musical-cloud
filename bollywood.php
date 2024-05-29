<?php 
session_start();

	include("connection.php");
	include("functions.php");

	$user_data = check_login($con);

?>




<html lang="zxx">

<head>
  <title></title>
  <meta charset="UTF-8">
  <meta name="description" content="MUSICAL-CLOUD">
  <meta name="keywords" content="music, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Favicon -->
  <!-- <link href="img/favicon.ico" rel="shortcut icon"/> -->

  <!-- Google font -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">

  <!-- Stylesheets -->
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" />
  <link rel="stylesheet" href="css/owl.carousel.min.css" />
  <link rel="stylesheet" href="css/slicknav.min.css" />

  <!-- Main Stylesheets -->
  <link rel="stylesheet" href="css/style.css" />


  <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body>
  <!-- Page Preloder -->
  <div id="preloder">
    <div class="loader"></div>
  </div>

  <!-- Header section -->
  <header class="header-section clearfix">
    <a href="index.php" class="site-logo">
      <p>MUSICAL-CLOUD</p>
    </a>
    <div class="header-right">
      <a href="#" class="hr-btn">Help</a>
      <span>|</span>
      <div class="user-panel">
        <!-- <a href="login.html" class="login">Login</a>
        <a href="signup.html" class="register">Create an account</a> -->
        <p>Hello, <?php echo $user_data['user_name']; ?></p>
      </div>
    </div>
    <ul class="main-menu">
      <li><a href="index.php">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Pages</a>
        <ul class="sub-menu">
          <li><a href="category.php">Category</a></li>
          <li><a href="playlist.php">Playlist</a></li>
          <li><a href="artist.php">Artist</a></li>
          <!-- <li><a href="blog.html">Blog</a></li> -->
          <li><a href="contact.php">Contact</a></li>
        </ul>
      </li>
      <!-- <li><a href="blog.html">News</a></li> -->
      <li><a href="contact.php">Contact</a></li>
    </ul>
  </header>
  <!-- Header section end -->

 

  <p>	
		<h1> Bollywood </h1>
		<table>
			<thead>
				<tr>
					<th>No.</th>
          <th>Song</th>
					<th>Artists</th>
          <th>Player</th>
				</tr>
			</thead>
			<tbody>
				 <?php
				  $selectquery4 = "SELECT * FROM Bollywood";
					$query4 = mysqli_query($con, $selectquery4);
					if (mysqli_num_rows($query4) > 0) {
					}else{
						echo "No record found:";
					}
					
				
				
					// output data of each row
					while($row = mysqli_fetch_assoc($query4)){ ?>
            <tr>
              <td><?php echo $row['Song_No']; ?></td>
              <td><?php echo $row['Song_Name'];?></td>
              <td><?php echo $row['Artists']; ?></td>
              <td><audio controls>
                <source src="<?php echo $row['Song_File'];?>" type="audio/mpeg">
                Your browser does not support the audio element.  
                </audio>
              </td>
            </tr>
					
				
					<?php
					}
					?>
				
			</tbody>
		</table>
		
		<style>
			table {
				border-collapse: collapse;
				width: 70%;
			}
			th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
			}
			th {
			  background-color: #f2f2f2;
			}
		</style>
	</p>
  

</p>

  

  <!-- Footer section -->
  <footer class="footer-section">
    <div class="container">
      <div class="row">
        <div class="col-xl-6 col-lg-7 order-lg-2">
          <div class="row">
            <div class="col-sm-4">
              <div class="footer-widget">
                <h2>About us</h2>
                <ul>
                  <li><a href="">Our Story</a></li>
                  <li><a href="">Sol Music Blog</a></li>
                  <li><a href="">History</a></li>
                </ul>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="footer-widget">
                <h2>Products</h2>
                <ul>
                  <li><a href="">Music</a></li>
                  <li><a href="">Subscription</a></li>
                  <li><a href="">Custom Music</a></li>
                  <li><a href="">Footage</a></li>
                </ul>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="footer-widget">
                <h2>Playlists</h2>
                <ul>
                  <li><a href="">Newsletter</a></li>
                  <li><a href="">Careers</a></li>
                  <li><a href="">Press</a></li>
                  <li><a href="">Contact</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xl-6 col-lg-5 order-lg-1">
          <p>MUSICAL-CLOUD</p>
          <div class="copyright">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>
              document.write(new Date().getFullYear());
            </script> All rights reserved | made by <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="" target="_blank">Sakshi</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </div>
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

  <!-- Footer section end -->

  <!--====== Javascripts & Jquery ======-->
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.slicknav.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/mixitup.min.js"></script>
  <script src="js/main.js"></script>

</body>

</html>
