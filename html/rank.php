<?php

   $servername = "localhost";
   $username = "root";
   $password = "s-eng";
   $dbname = "uploads";

   $conn = new mysqli($servername, $username, $password, $dbname);
   if($conn->connect_error) {
        die("Connection to DB failed: " . $conn->connect_error);
   }

//   $sql = "SELECT * FROM images WHERE score IS NULL";
//   $result = $conn->query($sql);
//   
//   $count = $result->num_rows;
//
//   if($count != 0) {
//      $shellResponse = shell_exec("cd image-quality-assessment && ./rank.sh");
//      $token = "p";
//      $json_pos = strpos($shellResponse, $token);
//      $json_pos += 2;
//      $json_string = substr($shellResponse, $json_pos);
//      
//      $json = json_decode($json_string, true);
//      
//      echo $shellResponse;
//      echo "<br><br>";
//      echo $json_string;
//      echo "<br><br>";
//      
//      foreach ($json as $person_name => $person_a) {
//         echo "<br>Score: " . $person_a['mean_score_prediction'];
//         echo "<br>ID: " . $person_a['image_id'];
//         echo "<br>";
//      }
//   }
   $score = '';
   $name = '';
   $stmt = $conn->prepare("UPDATE images SET score = ? WHERE name = ?");
   $stmt->bind_param("ss", $score, $name);

   $shellResponse = shell_exec("cd image-quality-assessment && ./rank.sh");
   $token = "p";
   $json_pos = strpos($shellResponse, $token);
   $json_pos += 2;
   $json_string = substr($shellResponse, $json_pos);

   $json = json_decode($json_string, true);

   foreach ($json as $images => $image) {
      $score = $image['mean_score_prediction'];
      $name = $image['image_id'];
      //add exiftool rating to photo
      shell_exec("./addExifScore.sh $score ./uploads/$name.jpg");
      $stmt->execute();
   }
 
   $conn->close();
   header("Location: gallery/uploads.php");



?>