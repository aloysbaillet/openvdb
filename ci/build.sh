#!/usr/bin/env bash

set -ex

COMPILER="$1"
RELEASE="$2"
ABI="$3"
BLOSC="$4"

mkdir build
cd build
cmake \
    -DCMAKE_CXX_COMPILER=${COMPILER} \
    -DCMAKE_BUILD_TYPE=${RELEASE} \
    -DOPENVDB_ABI_VERSION_NUMBER=${ABI} \
    -DUSE_BLOSC=${BLOSC} \
    -DOPENVDB_CXX_STRICT=ON \
    -DOPENVDB_BUILD_UNITTESTS=ON \
    -DOPENVDB_BUILD_VDB_LOD=ON \
    -DOPENVDB_BUILD_VDB_RENDER=ON \
    -DOPENVDB_BUILD_VDB_VIEW=ON \
    ..
make -j16
sudo make install
