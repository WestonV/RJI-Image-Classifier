<?php
$html = '
   <!DOCTYPE html>
   <html lang="en">
   <head>
   <title>RJI Group 17 - Gallery</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">

   <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
   <link rel="stylesheet" href="css/animate.css">

   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <link rel="stylesheet" href="css/owl.theme.default.min.css">
   <link rel="stylesheet" href="css/magnific-popup.css">

   <link rel="stylesheet" href="css/aos.css">

   <link rel="stylesheet" href="css/ionicons.min.css">

   <link rel="stylesheet" href="css/bootstrap-datepicker.css">
   <link rel="stylesheet" href="css/jquery.timepicker.css">


   <link rel="stylesheet" href="css/flaticon.css">
   <link rel="stylesheet" href="css/icomoon.css">
   <link rel="stylesheet" href="css/style.css">
   </head>
   <body>


      <header id="header">
         <div class="container">

         <div id="logo" class="pull-left">
         <!--<a href="#hero"><img src="img/logo.png" alt="" title="" /></img></a>-->
         <!-- Uncomment below if you prefer to use a text logo -->
         <h1><a href="../../index.html">RJI Group 17</a></h1>
         </div>

         </div>
      </header><!-- #header -->
      
      
      <section class="ftco-section-2">
         <div style="width:80%; margin:auto; padding: 1%;" class="container">
            <div class="row">
               <select id="Sort" class="col" style="margin: 0 1% 0 1%;">';

               $sortBy = "score desc";
               if(isset($_POST['sortBy'])) {
                  $sortBy = $_POST['sortBy'];
               }
               switch($sortBy) {
                  case "score desc":
                     $html .= '
                     <option value="score desc" selected>Sort by Score Descending</option>
                     <option value="score asc">Sort by Score Ascending</option>
                     <option value="name asc">Sort by Name A-Z</option>
                     <option value="name desc">Sort by Name Z-A</option>';
                     break;
                  case "score asc":
                     $html .= '
                     <option value="score desc">Sort by Score Descending</option>
                     <option value="score asc" selected>Sort by Score Ascending</option>
                     <option value="name asc">Sort by Name A-Z</option>
                     <option value="name desc">Sort by Name Z-A</option>';
                     break;
                  case "name asc":
                     $html .= '
                     <option value="score desc">Sort by Score Descending</option>
                     <option value="score asc">Sort by Score Ascending</option>
                     <option value="name asc" selected>Sort by Name A-Z</option>
                     <option value="name desc">Sort by Name Z-A</option>';
                     break;
                  case "name desc":
                     $html .= '
                     <option value="score desc">Sort by Score Descending</option>
                     <option value="score asc">Sort by Score Ascending</option>
                     <option value="name asc">Sort by Name A-Z</option>
                     <option value="name desc" selected>Sort by Name Z-A</option>';
                     break;
                  default:
                     $html .= '
                     <option value="score desc" selected>Sort by Score Descending</option>
                     <option value="score asc">Sort by Score Ascending</option>
                     <option value="name asc">Sort by Name A-Z</option>
                     <option value="name desc">Sort by Name Z-A</option>';
               }


               $html .= '
               </select>
               <button type="button" id="Select" class="col-4 btn" style="margin: 0 1% 0 1%;">Select All</button>
               <form action="download.php" method="post">
               <input type="submit" id="Download" value="Download 0" class="btn btn-primary col" style="margin: 0 1% 0 1%;">
               <input type="hidden" name="usage" value="live">
            </div>
         </div>
         <div class="photograhy" style="width:80%; margin:auto;">
         <div class="row">';

         $servername = "localhost";
         $username = "root";
         $password = "s-eng";
         $dbname = "uploads";

         $conn = new mysqli($servername, $username, $password, $dbname);
         if($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
         }

         $sortBy = "score desc";
         if(isset($_POST['sortBy'])) {
            $sortBy = $_POST['sortBy'];
         }
         $sql = "SELECT * FROM images ORDER BY " . $sortBy;
         $result = $conn->query($sql);
         if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
               $html .= '<div class="col-md-4 ftco-animate">
               <a href="../' . $row["path"] . '" class="photography-entry img image-popup d-flex justify-content-center align-items-center" style="background-image: url(../' . $row["path"] . ');">
                 <div class="overlay"></div>
                 <div class="text text-center">
                     <h3>' . $row["name"] . '</h3>
                     <span class="tag">Score: ' . $row["score"] . '</span>
                 </div>

               </a>
               <div style="justify-content: center; display: flex; height: auto; padding: 4%;">
               <input style="transform: scale(2);" type="checkbox" name="selections[]" class="checkSingle" value="' . $row["path"] . '">
               </div>
               </div>';
            }
         } else {
            $html .= '<h2>No images uploaded at this time!</h2>';
         }

         $html .= '
         </div>
         </div>
         </form>
         
         
         <form id="Refresh" action="uploads.php" method="post">
         <input id="SortBy" type="hidden" name="sortBy" value="">
         </form>
         
         
      </section>
      <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container px-md-5">

      <div class="row" style="text-align: center;">
      <div class="col-md-12">

      <p>
      Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>

      </div>
      </div>
      </div>
      </footer>


      <!-- loader -->
      <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


      <script src="js/jquery.min.js"></script>
      <script src="js/jquery-migrate-3.0.1.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.easing.1.3.js"></script>
      <script src="js/jquery.waypoints.min.js"></script>
      <script src="js/jquery.stellar.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>
      <script src="js/jquery.magnific-popup.min.js"></script>
      <script src="js/aos.js"></script>
      <script src="js/jquery.animateNumber.min.js"></script>
      <script src="js/bootstrap-datepicker.js"></script>
      <script src="js/jquery.timepicker.min.js"></script>
      <script src="js/scrollax.min.js"></script>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
      <script src="js/google-map.js"></script>
      <script src="js/main.js"></script>
      <script src="gallery.js"></script>

      </body>
   </html>'; 
echo $html;
?>