-- -*- lua -*-
help(
[[
This module loads a customized version of PathoScope. See https://github.com/gwcompbio/PathoScope

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p pathoscopeC1 && cd pathoscopeC1
git clone git@github.com:gwcompbio/PathoScope.git PathoScope.git
# Add upstream for future merging
cd PathoScope.git
git remote add upstream git@github.com:PathoScope/PathoScope.git

]])

------------------------------------------------------------------------
-- pathoscopeC1
------------------------------------------------------------------------
local version = "git"
local base = "/groups/cbi/shared/apps/pathoscopeC1/PathoScope.git"

whatis("Description: Pathoscope - Species identification and strain attribution with unassembled sequencing data. Customized version for ColonialOne")
whatis("URL: https://github.com/gwcompbio/PathoScope")

prepend_path('PATH', pathJoin(base,'scripts'))
