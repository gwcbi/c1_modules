-- -*- lua -*-
help(
[[
This module loads StringTie. See http://ccb.jhu.edu/software/stringtie/

Installation:
cd /groups/cbi/shared/apps
mkdir -p stringtie && cd stringtie
mkdir -p archive && cd archive
wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-1.2.3.tar.gz
cd ..
tar xzf archive/stringtie-1.2.3.tar.gz
mv stringtie-1.2.3 1.2.3
cd 1.2.3
make release
mkdir -p bin && cd bin && ln -s ../stringtie

]])

------------------------------------------------------------------------
-- stringtie
------------------------------------------------------------------------
local version = "1.2.3"
local base = pathJoin("/groups/cbi/shared/apps/stringtie", version)

whatis("Description: stringtie - fast and highly efficient assembler of RNA-Seq alignments into potential transcripts.")
whatis("URL: http://ccb.jhu.edu/software/stringtie/")

prepend_path('PATH', pathJoin(base, 'bin'))
