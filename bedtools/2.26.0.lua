-- -*- lua -*-
help(
[[
This module loads bedtools. See http://bedtools.readthedocs.io/en/latest/index.html

Installation:
cd /groups/cbi/shared/apps
mkdir -p bedtools && cd bedtools
mkdir -p archive && cd archive
wget https://github.com/arq5x/bedtools2/releases/download/v2.26.0/bedtools-2.26.0.tar.gz
cd ..
tar xzf archive/bedtools-2.26.0.tar.gz
mv bedtools2 2.26.0
cd 2.26.0
make

]])

------------------------------------------------------------------------
-- stringtie
------------------------------------------------------------------------
local version = "2.26.0"
local base = pathJoin("/groups/cbi/shared/apps/bedtools", version)

whatis("Description: bedtools - a swiss-army knife of tools for a wide-range of genomics analysis tasks.")
whatis("URL: http://bedtools.readthedocs.io/en/latest/index.html")

prepend_path('PATH', pathJoin(base, 'bin'))
