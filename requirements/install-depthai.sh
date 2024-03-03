#!/bin/bash

cd ~/drone-project
git clone https://github.com/luxonis/depthai-core
cd depthai-core

git submodule update --init --recursive
cmake -S. -Bbuild
cmake --build build
