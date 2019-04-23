#!/bin/bash

#check src- evaluator - predicts.py

./predict  \
--docker-image nima-cpu \
--base-model-name MobileNet \
--weights-file $(pwd)/models/MobileNet/weights_mobilenet_technical_0.11.hdf5 \
--image-source $1