-- -*- lua -*-
help(
[[
This module loads PredictHaplo. See http://bmda.cs.unibas.ch/HivHaploTyper/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p PredictHaplo && cd PredictHaplo

wget http://bmda.cs.unibas.ch/HivHaploTyper/PredictHaplo-Paired-0.4.tgz
mkdir -p archive && mv PredictHaplo-Paired-0.4.tgz archive
tar xzf archive/PredictHaplo-Paired-0.4.tgz
mv PredictHaplo-Paired-0.4 0.4 && cd 0.4

tar xzf scythestat-1.0.3.tar.gz && cd scythestat-1.0.3
./configure --prefix /groups/cbi/shared/apps/PredictHaplo/0.4/NEWSCYTHE
cd ..

module load blas/gcc/1
module load lapack/gcc/3.4.1

make
mkdir bin && mv PredictHaplo-Paired bin
]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "0.4"
local base = pathJoin("/groups/cbi/shared/apps/PredictHaplo", version)

whatis("Description: PredictHaplo - reconstructing haplotypes from next-generation sequencing data..")
whatis("URL: http://bmda.cs.unibas.ch/HivHaploTyper/")

prepend_path('PATH', pathJoin(base,'bin'))

