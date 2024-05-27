#!/bin/bash
# install NVIDIA drivers through ubuntu-drivers
apt update
apt install -y ubuntu-drivers-common
ubuntu-drivers install --gpgpu
