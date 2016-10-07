-- -*- lua -*-
help(
[[
This module loads HISAT2. See http://ccb.jhu.edu/software/hisat2/index.shtml

Installation:
cd /groups/cbi/shared/apps
mkdir -p hisat2 && cd hisat2
mkdir -p archive && cd archive
wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.0.4-Linux_x86_64.zip
cd ..
unzip archive/hisat2-2.0.4-Linux_x86_64.zip
mv hisat2-2.0.4 2.0.4

]])

------------------------------------------------------------------------
-- hisat2
------------------------------------------------------------------------
local version = "2.0.4"
local base = pathJoin("/groups/cbi/shared/apps/hisat2", version)

whatis("Description: hisat2 - graph-based alignment of next generation sequencing reads to a population of genomes.")
whatis("URL: http://ccb.jhu.edu/software/hisat2/index.shtml")

prepend_path('PATH', base)
