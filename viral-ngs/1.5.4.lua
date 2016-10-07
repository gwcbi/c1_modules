-- -*- lua -*-
help(
[[
This module loads viral-ngs pipeline. See https://github.com/broadinstitute/viral-ngs

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps
mkdir -p viral-ngs && cd viral-ngs
mkdir -p archive 
wget https://github.com/broadinstitute/viral-ngs/archive/v1.5.4.tar.gz
mv v1.5.4.tar.gz archive
tar xzf archive/v1.5.4.tar.gz
mv viral-ngs-1.5.4 1.5.4
cd 1.5.4
mkdir -p bin
cd bin
for f in  ../*.py; do ln -s $f; done

]])

------------------------------------------------------------------------
-- viral-ngs
------------------------------------------------------------------------
local version = "1.5.4"
local base = pathJoin("/groups/cbi/shared/apps/viral-ngs", version)

whatis("Description: viral-ngs - Viral genomics analysis pipelines.")
whatis("URL: https://github.com/broadinstitute/viral-ngs")

load("gatk/3.4-46")
prepend_path('GATK_PATH', "/c1/apps/gatk/GenomeAnalysisTK.jar")

load("novoalign/3.03.02")
prepend_path('NOVOALIGN_PATH', "/c1/apps/novoalign/novocraft")

load("anaconda/2.5.0")
prepend_path('CONDA_ENVS_PATH', "/groups/cbi/shared/apps/viral-ngs/envs")

prepend_path('PATH', pathJoin(base, 'bin'))
