-- -*- lua -*-
help(
[[
This module loads kmernator. See https://github.com/JGI-Bioinformatics/Kmernator

Installation:
#!/bin/bash
module load cmake/3.3.1
module load openmpi/gcc/64/1.8

cd /groups/cbi/shared/apps && mkdir -p kmernator && cd kmernator
git clone git@github.com:JGI-Bioinformatics/Kmernator.git kmernator.git
mkdir build && cd build
BUILD="Release"
PREFIX=$(pwd)
cmake ../kmernator.git -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=$BUILD
make -j && make test 
make install
]])

------------------------------------------------------------------------
-- kmernator
------------------------------------------------------------------------
local version = "build"
local base = pathJoin("/groups/cbi/shared/apps/kmernator", version)

whatis("Description: kmernator - An MPI Toolkit for large-scale genomic analysis.")
whatis("URL: https://github.com/JGI-Bioinformatics/Kmernator")

prepend_path('PATH', pathJoin(base,'bin'))
