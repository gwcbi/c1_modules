-- -*- lua -*-
help(
[[
This module loads snakemake. See https://bitbucket.org/snakemake/snakemake/wiki/Home

Installation:
#!/bin/bash
cd /groups/cbi/shared/apps
mkdir -p snakemake && cd snakemake
mkdir -p envs
# Need to unload python if loaded
module load miniconda3/4.0.5
conda create -p /groups/cbi/shared/apps/snakemake/envs/snakemake -c bioconda python=3.5 snakemake

]])

------------------------------------------------------------------------
-- viral-ngs
------------------------------------------------------------------------
local version = "3.7.1"
local base = "/groups/cbi/shared/apps/viral-ngs"

whatis("Description: snakemake - Workflow management system.")
whatis("URL: https://bitbucket.org/snakemake/snakemake/wiki/Home")

load("miniconda3/4.0.5")
prepend_path('CONDA_ENVS_PATH', "/groups/cbi/shared/apps/snakemake/envs")

-- if mode() == "load" then
--  capture("source activate snakemake")
-- elseif mode() == "unload" then
--  capture("source deactivate")
--end
