#!/bin/bash
set -e

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
    nvidia-jetpack=6.0-b199 \
    libnvinfer8=8.6.1-1+cuda12.0 \
    libnvinfer-dev=8.6.1-1+cuda12.0 \
    libcudnn8=8.9.2.26-1+cuda12.0 \
    libcudnn8-dev=8.9.2.26-1+cuda12.0 \
    python3-vpi \
    vpi3-dev \
    deepstream-6.3 \
    libopencv-dev \
    python3-opencv \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-gl \
    gstreamer1.0-nice \
    gstreamer1.0-alsa \
    gstreamer1.0-plugins-base-apps \
    gstreamer1.0-plugins-nvvideo4linux2
