-- -*- lua -*-
help(
[[
This module loads miniconda3. See http://conda.pydata.org/miniconda.html

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps
mkdir -p miniconda3 && cd miniconda3
wget https://repo.continuum.io/miniconda/Miniconda3-4.0.5-Linux-x86_64.sh
bash Miniconda3-4.0.5-Linux-x86_64.sh
# When prompted, the installation path is /groups/cbi/shared/apps/miniconda3/4.0.5

]])

------------------------------------------------------------------------
-- miniconda3
------------------------------------------------------------------------
local version = "4.0.5"
local base = pathJoin("/groups/cbi/shared/apps/miniconda3", version)

whatis("Description: miniconda3 - Cross-platform package manager and environment manager.")
whatis("URL: http://conda.pydata.org/docs/intro.html")

conflict("python", "python2.7")
prepend_path('PATH', pathJoin(base,'bin'))
