#!/bin/bash
# install NVIDIA drivers through ubuntu-drivers
apt update
apt install -y ubuntu-drivers-common
ubuntu-drivers install --gpgpu

# query the installed NVIDIA driver version
version=$(dpkg-query --show nvidia-kernel-common-* | awk '{print $1}' | awk -F'-' '{print $4"-" $5}')
apt install -y nvidia-utils-$version

