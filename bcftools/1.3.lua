-- -*- lua -*-
help(
[[
This module loads bcftools. See http://www.htslib.org/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p bcftools && cd bcftools
mkdir -p archive
wget https://github.com/samtools/bcftools/releases/download/1.3/bcftools-1.3.tar.bz2
mv bcftools-1.3.tar.bz2 archive
tar xjf archive/bcftools-1.3.tar.bz2
mv bcftools-1.3 1.3
cd 1.3
make
make prefix=/groups/cbi/shared/apps/bcftools/1.3 install

]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "1.3"
local base = pathJoin("/groups/cbi/shared/apps/bcftools", version)

whatis("Description: bcftools -reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence variants")
whatis("URL: http://www.htslib.org/")

prepend_path('PATH', pathJoin(base,'bin'))
