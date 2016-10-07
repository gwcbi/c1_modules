-- -*- lua -*-
help(
[[
This module loads gffread. See https://ccb.jhu.edu/software/stringtie/gff.shtml

Installation:
cd /groups/cbi/shared/apps
mkdir -p gffread && cd gffread
mkdir -p archive && cd archive
wget http://ccb.jhu.edu/software/stringtie/dl/gffread-0.9.6.tar.gz
cd ..
tar xzf archive/gffread-0.9.6.tar.gz
mv gffread-0.9.6 0.9.6
cd 0.9.6
make release
mkdir -p bin && cd bin && ln -s ../gffread

]])

------------------------------------------------------------------------
-- gffread
------------------------------------------------------------------------
local version = "0.9.6"
local base = pathJoin("/groups/cbi/shared/apps/gffread", version)

whatis("Description: gffread - validate, filter, convert and perform various other operations on GFF files.")
whatis("URL: https://ccb.jhu.edu/software/stringtie/gff.shtml")

prepend_path('PATH', pathJoin(base, 'bin'))
