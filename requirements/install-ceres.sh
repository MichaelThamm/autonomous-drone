#!/bin/bash

cd ~/drone-project

# google-glog + gflags
sudo apt-get install -y libgoogle-glog-dev libgflags-dev
# Use ATLAS for BLAS & LAPACK
sudo apt-get install -y libatlas-base-dev
# Eigen3
sudo apt-get install -y libeigen3-dev

# http://ceres-solver.org/installation.html
mkdir ceres-solver-2.2.0
cd ceres-solver-2.2.0
tar zxf ceres-solver-2.2.0.tar.gz
cd ..
mkdir ceres-bin
cd ceres-bin
cmake ../ceres-solver-2.2.0
make
make test
make install
