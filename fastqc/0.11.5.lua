-- -*- lua -*-
help(
[[
This module loads FastQC. See http://www.bioinformatics.babraham.ac.uk/projects/fastqc/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p fastqc && cd fastqc
mkdir -p archive
wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
mv fastqc_v0.11.5.zip archive
unzip archive/fastqc_v0.11.5.zip
mv FastQC 0.11.5
cd 0.11.5
chmod a+x fastqc
mkdir -p bin && cd bin
ln -s ../fastqc

]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "0.11.5"
local base = pathJoin("/groups/cbi/shared/apps/fastqc", version)

whatis("Description: FastQC - A quality control tool for high throughput sequence data.")
whatis("URL: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/")

load("jdk")
prepend_path('PATH', pathJoin(base,'bin'))
