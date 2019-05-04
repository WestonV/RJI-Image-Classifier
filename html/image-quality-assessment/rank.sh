#!/bin/bash

./predict  \
--docker-image nima-cpu \
--base-model-name MobileNet \
--weights-file $(pwd)/models/MobileNet/weights_mobilenet_technical_0.11.hdf5 \
--image-source /var/www/html/uploads