-- -*- lua -*-
help(
[[
This module loads Telescope. See https://bitbucket.org/mlbendall/telescope

Installed packages that telescope depends on in a virtualenv. The packages are added to PYTHONPATH

#!/bin/bash
git clone git@bitbucket.org:mlbendall/telescope.git telescope.git

]])

------------------------------------------------------------------------
-- Telescope
------------------------------------------------------------------------
local version = "0.3"
local appdir = "/groups/cbi/shared/apps/telescope"
local verdir = pathJoin(appdir,'telescope.git')

whatis("Description: Telescope")
whatis("URL: https://bitbucket.org/mlbendall/telescope")

prepend_path('PYTHONPATH', pathJoin(appdir,'env/lib/python2.7/site-packages'))
prepend_path('PATH', pathJoin(verdir,'bin'))
