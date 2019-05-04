<?php
   // Get real path for our folder
$rootPath = realpath('/var/www/html/uploads');

// Initialize archive object
$zip = new ZipArchive();
$zip->open('uploads.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);

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

// Zip archive will be created only after closing object
$zip->close();








//   $zipname = 'uploads.zip';
//   $zip = new ZipArchive;
//   
//   if($zip->open($zipname, ZipArchive::CREATE))
//   {
//      echo 'cool';
//   } else {
//   echo "lame";
//   }
//    if ($handle = opendir('../demo')) {
//       
//       
//      while (false !== ($entry = readdir($handle))) {
//        if ($entry != "." && $entry != ".." && !strstr($entry,'.php')) {
//            $zip->addFile($entry);
//        }
//      }
//      closedir($handle);
//    }
////
//    $zip->close();

    header('Content-Type: application/zip');
    header("Content-Disposition: attachment; filename='uploads.zip'");
    header('Content-Length: ' . filesize($zipname));
    header("Location: uploads.zip");
?>