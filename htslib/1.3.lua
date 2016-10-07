-- -*- lua -*-
help(
[[
This module loads htslib. See http://www.htslib.org/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p htslib && cd htslib
mkdir -p archive
wget https://github.com/samtools/htslib/releases/download/1.3/htslib-1.3.tar.bz2
mv htslib-1.3.tar.bz2 archive
tar xjf archive/htslib-1.3.tar.bz2
mv htslib-1.3 1.3
cd 1.3
make
make prefix=/groups/cbi/shared/apps/htslib/1.3 install
# Also need to link config.h in the headers directory
cd include && ln -s ../config.h

]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "1.3"
local base = pathJoin("/groups/cbi/shared/apps/htslib", version)

whatis("Description: htslib- a library for interacting with high-throughput sequencing data.")
whatis("URL: http://www.htslib.org/")

prepend_path('PATH', pathJoin(base,'bin'))
setenv("HTSLIB_LIBRARY_DIR", pathJoin(base,'lib'))
setenv("HTSLIB_INCLUDE_DIR", pathJoin(base,'include'))
