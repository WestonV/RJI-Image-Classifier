<?php

$servername = "localhost";
$username = "root";
$password = "s-eng";
$dbname = "demo";

$conn = new mysqli($servername, $username, $password, $dbname);
if($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
echo "Connected!<br>";


$sql = "DELETE FROM images";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully<br>";
} else {
    echo "Error deleting record: " . $conn->error;
}

$fileSystemIterator = new FilesystemIterator('demo');

//$names = array();
//$paths = array();
foreach ($fileSystemIterator as $fileInfo){
	$stmt = $conn->prepare("INSERT INTO images (path, name) VALUES (?, ?)");
	$stmt->bind_param("ss", $path, $name);
	$path = $fileInfo->getPathname();
	$name = $fileInfo->getFilename();
	$name = pathinfo($name, PATHINFO_FILENAME);
	$stmt->execute();
   //$names[] = $fileInfo->getFilename();
	//$paths[] = $fileInfo->getPathname();
}

$json_string = file_get_contents("test.json");
$json = json_decode($json_string, true);

//$rank_id = array();
//$rank_score = array();
foreach ($json as $images => $image) {
	$stmt = $conn->prepare("UPDATE images set score = ? WHERE name = ?");
	$stmt->bind_param("ss", $score, $name);
	$score = $image['mean_score_prediction'];
	$name = $image['image_id'];
	$stmt->execute();
}

//print_r($rank_score);

//$stmt = $conn->prepare("UPDATE images set score = ? WHERE name = ?");
//$stmt->bind_param("ss", $score, $name);
//$score = 10;
//$name = "20170119_uglyproduce_lb_149";
//$stmt->execute();



$sql = "SELECT * FROM images";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "path: " . $row["path"]. " - Name: " . $row["name"]. " " . $row["score"]. "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();

//Upload stuff
/*$target_dir = "uploads/";
   $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);


   $uploadOk = 1;
   $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
   // Check if image file is a actual image or fake image
   if(isset($_POST["submit"])) {
       $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
       if($check !== false) {
           echo "File is an image - " . $check["mime"] . ".";
           $uploadOk = 1;
       } else {
           echo "File is not an image.";
           $uploadOk = 0;
       }
   }
   // Check if file already exists
   if (file_exists($target_file)) {
       echo "Sorry, file already exists.";
       $uploadOk = 0;
   }
   // Check file size
   if ($_FILES["fileToUpload"]["size"] > 500000) {
       echo "Sorry, your file is too large.";
       $uploadOk = 0;
   }
   // Allow certain file formats
   if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
   && $imageFileType != "gif" ) {
       echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
       $uploadOk = 0;
   }
   // Check if $uploadOk is set to 0 by an error
   if ($uploadOk == 0) {
       echo "Sorry, your file was not uploaded.";
   // if everything is ok, try to upload file
   } else {
       if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
           echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
       } else {
           echo "Sorry, there was an error uploading your file.";
       }
   }*/



?>


