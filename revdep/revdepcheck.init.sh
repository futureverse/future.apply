#! /usr/bin/env bash

## Missing or outdated LaTeX packages
false && R --quiet --no-save <<EOF
    tinytex::install_tinytex(force = TRUE)
    message("TeX root: ", tinytex::tinytex_root())
    tinytex::tlmgr_update()
    tinytex::tlmgr_install("nowidow")  # QDNAseq
    tinytex::tlmgr_install("wrapfig")  # tramvs
    tinytex::tlmgr_install("apacite")  # ctsem
EOF


## ---------------------------------------------------------------------
## Phase 1
## ---------------------------------------------------------------------

## Add packages to check
revdep/run.R --add-children

## Drop packages failing on CRAN (2026-10-08)
#revdep/run.R --rm ...

## Drop packages failing on Bioconductor (2026-10-08)
#revdep/run.R --rm ...

## Drop packages no longer on CRAN (2026-10-08)
#revdep/run.R --rm ...

## Drop packages no longer on Bioconductor (2026-10-08)
#revdep/run.R --rm ...

## Too many cores due to detectCores()
pkgs_detectCores=(FracFixR lavDiag)
revdep/run.R --rm "${pkgs_detectCores[@]}"

## Run revdep check
revdep/run.R


## ---------------------------------------------------------------------
## Phase 2
## ---------------------------------------------------------------------
## Set: Too many cores due to detectCores()
revdep/run.R --add "${pkgs_detectCores[@]}"
NSLOTS=4 revdep/run.R
