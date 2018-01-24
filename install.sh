#!/bin/bash

# This installation is specifically for Ubuntu (16.04 - 17.10)

# To run tensorflow with gpu, the most stable version of CUDA is v8.0 & CuDNN is v6.0

# reference https://www.tensorflow.org/install/install_sources#tested_source_configurations

sudo apt-get install libcupti-dev

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb

sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb

sudo apt-get update

sudo apt-get -y install cuda-8.0


#Installation script for CuDNN v6.0

wget http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/cudnn-8.0-linux-x64-v6.0.tgz

tar -xzvf cudnn-8.0-linux-x64-v6.0.tgz

sudo cp -P cuda/include/cudnn.h /usr/local/cuda-8.0/include

sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-8.0/lib64/

sudo chmod a+r /usr/local/cuda-8.0/lib64/libcudnn*


# set environment variables

export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}

export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\

${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}


#Install tensorflow w/ gpu

sudo apt-get install python3-pip python3-dev

sudo pip3 install tensorflow-gpu
