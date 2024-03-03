#!/bin/bash

cd ~/drone-project

# google-glog + gflags
sudo apt-get install -y libgoogle-glog-dev libgflags-dev
# Use ATLAS for BLAS & LAPACK
sudo apt-get install -y libatlas-base-dev
# Eigen3
sudo apt-get install -y libeigen3-dev

# https://ceres-solver.googlesource.com/ceres-solver/+/refs/tags/2.0.0
mkdir ceres-solver-2.0.0
cd ceres-solver-2.0.0
tar zxf ceres-solver-2.0.0.tar.gz
cd ..
mkdir ceres-bin
cd ceres-bin
cmake ../ceres-solver-2.0.0
make
make test
# Optionally install Ceres, it can also be exported using CMake which
# allows Ceres to be used without requiring installation, see the documentation
# for the EXPORT_BUILD_DIR option for more information.
make install