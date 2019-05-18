#!/usr/bin/env bash

set -ex

apt-get update

apt-get install -y sudo \
                   zlib1g-dev \
                   wget \
                   unzip \
                   curl \
                   cmake \
                   git \
                   g++ \
                   clang \
                   llvm \
                   pkg-config \
                   libglu1-mesa-dev \
                   libgl1-mesa-dev \
                   libcppunit-dev \
                   liblog4cplus-dev \
                   libglfw3-dev \
                   python-dev \
                   python-numpy \
                   python-epydoc \
                   doxygen

apt-get clean
rm -rf /var/lib/apt/lists/*
