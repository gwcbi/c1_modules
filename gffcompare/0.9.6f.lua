-- -*- lua -*-
help(
[[
This module loads gffcompare. See https://ccb.jhu.edu/software/stringtie/gff.shtml

Installation:
cd /groups/cbi/shared/apps
mkdir -p gffcompare && cd gffcompare
mkdir -p archive && cd archive
wget http://ccb.jhu.edu/software/stringtie/dl/gffcompare-0.9.6f.tar.gz
cd ..
tar xzf archive/gffcompare-0.9.6f.tar.gz
mv gffcompare-0.9.6f 0.9.6f
cd 0.9.6f
make release
mkdir -p bin && cd bin && ln -s ../gffcompare

]])

------------------------------------------------------------------------
-- gffcompare
------------------------------------------------------------------------
local version = "0.9.6f"
local base = pathJoin("/groups/cbi/shared/apps/gffcompare", version)

whatis("Description: gffcompare - compare, merge, annotate and estimate accuracy of one or more GFF files.")
whatis("URL: https://ccb.jhu.edu/software/stringtie/gff.shtml")

prepend_path('PATH', pathJoin(base, 'bin'))
