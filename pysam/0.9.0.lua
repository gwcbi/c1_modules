-- -*- lua -*-
help(
[[
This module loads pysam. See https://pysam.readthedocs.org/en/latest/

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps && mkdir -p pysam && cd pysam
virtualenv 0.9.0
. 0.9.0/bin/activate

# Install pysam using external htslib libraries
module load htslib # Sets HTSLIB_LIBRARY_DIR and HTSLIB_INCLUDE_DIR
export LD_LIBRARY_PATH=$HTSLIB_LIBRARY_DIR:$LD_LIBRARY_PATH
export LIBRARY_PATH=$HTSLIB_LIBRARY_DIR:$LIBRARY_PATH
pip install pysam==0.9.0

]])

------------------------------------------------------------------------
-- samtools
------------------------------------------------------------------------
local version = "0.9.0"
local base = pathJoin("/groups/cbi/shared/apps/pysam", version)

whatis("Description: pysam - An interface for reading and writing SAM files.")
whatis("URL: https://pysam.readthedocs.org/en/latest/")

load('htslib/1.3')
local htslibdir = os.getenv('HTSLIB_LIBRARY_DIR') or ""
prepend_path('LD_LIBRARY_PATH', htslibdir)

prepend_path('PATH', pathJoin(base,'bin'))
prepend_path('PYTHONPATH', pathJoin(base,'lib/python2.7/site-packages'))
