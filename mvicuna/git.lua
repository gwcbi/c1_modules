-- -*- lua -*-
help(
[[
This module loads mvicuna. See https://github.com/broadinstitute/mvicuna

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p mvicuna && cd mvicuna
git clone git@github.com:broadinstitute/mvicuna.git mvicuna.git
mkdir -p current/bin && cd current/bin
ln -s ../../mvicuna.git/mvicuna/linux64/mvicuna
]])

------------------------------------------------------------------------
-- mvicuna
------------------------------------------------------------------------
local version = "current"
local base = pathJoin("/groups/cbi/shared/apps/mvicuna", version)

whatis("Description: mvicuna - The mvicuna tool for the analysis of viral NGS data.")
whatis("URL: https://github.com/broadinstitute/mvicuna")

prepend_path('PATH', pathJoin(base,'bin'))
