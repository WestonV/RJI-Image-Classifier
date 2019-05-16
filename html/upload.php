<?php
   $target="uploads/";

   $servername = "localhost";
   $username = "root";
   $password = "s-eng";
   $dbname = "uploads";

   $conn = new mysqli($servername, $username, $password, $dbname);
   if($conn->connect_error) {
        die("Connection to DB failed: " . $conn->connect_error);
   }

   //Deletes files from the directory as well as the upload database before adding new entries.
   $files = glob('uploads/*'); // get all file names
   foreach($files as $file){ // iterate files
     if(is_file($file))
       unlink($file); // delete file
   }
   $sql = "DELETE FROM images";
   $conn->query($sql);

   $path = '';
   $name = '';
   $stmt = $conn->prepare("INSERT INTO images (path, name) VALUES (?, ?)");
   $stmt->bind_param("ss", $path, $name);

   if($target[strlen($target)-1]!='/')
      $target=$target.'/';
      $count=0;
      foreach ($_FILES['file']['name'] as $filename) 
      {
         $temp=$target;
         $tmp=$_FILES['file']['tmp_name'][$count];
         $count=$count + 1;
         $temp=$temp.basename($filename);
         if(move_uploaded_file($tmp,$temp)) {
            echo "success";
         } else {
            echo "fail";
         }

         $path = $temp;
         $name = pathinfo($filename, PATHINFO_FILENAME);
         $stmt->execute();
         
         $temp='';
         $tmp='';
      }

      //Testing regular page, sorry to comment out your work!
//      $shellResponse = shell_exec("cd image-quality-assessment && ./rank.sh");
//      echo $shellResponse;
//      echo "testing";
      $conn->close();
      header('Location: rank.php');
      //header('Location: gallery/uploads.php');
?>