<?php
   include "../rank.php";
   $downloadSelections = $_POST['selections'];
   $destinationFolder = "downloadPrep/";

   $files = glob('downloadPrep/demo/*'); // get all file names
   foreach($files as $file){ // iterate files
     if(is_file($file))
       unlink($file); // delete file
   }
   $files = glob('downloadPrep/uploads/*'); // get all file names
   foreach($files as $file){ // iterate files
     if(is_file($file))
       unlink($file); // delete file
   }

   foreach($downloadSelections as $selection) {
      $source = "../" . $selection;
      $destination = $destinationFolder . $selection;
      copy($source, $destination);
   }

   if($_POST['usage'] == 'demo') {
      $rootPath = realpath('/var/www/html/gallery/downloadPrep/demo');
   }
   if($_POST['usage'] == 'live') {
      $rootPath = realpath('/var/www/html/gallery/downloadPrep/uploads');
   }
   
   // Initialize archive object
   $zip = new ZipArchive();
   $zip->open('Ranked_Photos.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);

   // Create recursive directory iterator
   /** @var SplFileInfo[] $files */
   $files = new RecursiveIteratorIterator(
       new RecursiveDirectoryIterator($rootPath),
       RecursiveIteratorIterator::LEAVES_ONLY
   );

   foreach ($files as $name => $file)
   {
       // Skip directories (they would be added automatically)
       if (!$file->isDir())
       {
           // Get real and relative path for current file
           $filePath = $file->getRealPath();
           $relativePath = substr($filePath, strlen($rootPath) + 1);
         
           // Add current file to archive
           $zip->addFile($filePath, $relativePath);
       }
   }

   if($zip->numFiles == 0) {
      $zip->close();
      header("Location: demo.php");
   } else {
      
   
   // Zip archive will be created only after closing object
   $zip->close();
   header('Content-Type: application/zip');
   header("Content-Disposition: attachment; filename='Ranked_Photos.zip'");
   header('Content-Length: ' . filesize($zipname));
   header("Location: Ranked_Photos.zip");
   }
   
?>