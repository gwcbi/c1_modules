-- -*- lua -*-
help(
[[
This module loads samtools. See http://www.htslib.org/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p samtools && cd samtools
mkdir -p archive
wget https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2
mv samtools-1.3.tar.bz2 archive
tar xjf archive/samtools-1.3.tar.bz2
mv samtools-1.3 1.3
cd 1.3
make
make prefix=/groups/cbi/shared/apps/samtools/1.3 install

]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "1.3"
local base = pathJoin("/groups/cbi/shared/apps/samtools", version)

whatis("Description: samtools - a suite of programs for interacting with high-throughput sequencing data.")
whatis("URL: http://www.htslib.org/")

prepend_path('PATH', pathJoin(base,'bin'))

