<?php

//$output = shell_exec('./image-quality-assessment/populate.sh');
//echo shell_exec('./image-quality-assessment/predict  \
//--docker-image nima-cpu \
//--base-model-name MobileNet \
//--weights-file $(pwd)/image-quality-assessment/models/MobileNet/weights_mobilenet_technical_0.11.hdf5 \
//--image-source $(pwd)/image-quality-assessment/src/tests/test_images 2>&1 &');
//
//
//echo "<br>hi";


$json_string = file_get_contents("test.json");
$json = json_decode($json_string, true);

foreach ($json as $person_name => $person_a) {
    echo $person_a['mean_score_prediction'];
	echo $person_a['image_id'];
	echo "<br>";
}







?>