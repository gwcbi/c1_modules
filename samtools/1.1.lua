-- -*- lua -*-
help(
[[
This module loads samtools. See http://www.htslib.org/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p samtools && cd samtools
mkdir -p archive
wget http://sourceforge.net/projects/samtools/files/samtools/1.1/samtools-1.1.tar.bz2
mv samtools-1.1.tar.bz2 archive
tar xjf archive/samtools-1.1.tar.bz2 
mv samtools-1.1 1.1
cd 1.1
make
make prefix=/groups/cbi/shared/apps/samtools/1.1 install

]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "1.1"
local base = pathJoin("/groups/cbi/shared/apps/samtools", version)

whatis("Description: samtools - a suite of programs for interacting with high-throughput sequencing data.")
whatis("URL: http://www.htslib.org/")

prepend_path('PATH', pathJoin(base,'bin'))

