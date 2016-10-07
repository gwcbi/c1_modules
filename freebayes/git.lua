-- -*- lua -*-
help(
[[
This module loads freebayes. See https://github.com/ekg/freebayes

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p freebayes && cd freebayes
git clone --recursive git://github.com/ekg/freebayes.git freebayes.git
cd freebayes.git
module load cmake
make

]])

------------------------------------------------------------------------
-- freebayes
------------------------------------------------------------------------
local version = "git"
local base = pathJoin("/groups/cbi/shared/apps/freebayes", "freebayes.git")

whatis("Description: freebayes - Bayesian haplotype-based polymorphism discovery and genotyping")
whatis("URL: https://github.com/ekg/freebayes")

prepend_path('PATH', pathJoin(base, 'scripts'))
prepend_path('PATH', pathJoin(base, 'bin'))
