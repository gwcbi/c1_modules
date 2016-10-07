-- -*- lua -*-
help(
[[
This module loads Git Large File Storage (git-lfs). See https://git-lfs.github.com/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p git-lfs && cd git-lfs
wget https://github.com/github/git-lfs/releases/download/v1.0.0/git-lfs-linux-amd64-1.0.0.tar.gz
mkdir -p archive && mv git-lfs-linux-amd64-1.0.0.tar.gz archive
tar xzf archive/git-lfs-linux-amd64-1.0.0.tar.gz
mv git-lfs-1.0.0 1.0.0
cd 1.0.0
export PREFIX=/groups/cbi/shared/apps/git-lfs/1.0.0
. install.sh

]])

------------------------------------------------------------------------
-- Git Large File Storage
------------------------------------------------------------------------
local version = "1.0.0"
local base = pathJoin("/groups/cbi/shared/apps/git-lfs", version)

whatis("Description: Git Large File Storage")
whatis("URL: https://git-lfs.github.com/")

prereq("git")
prepend_path('PATH', pathJoin(base,'bin'))
