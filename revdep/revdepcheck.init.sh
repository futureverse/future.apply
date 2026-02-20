#! /usr/bin/env bash

## Missing or outdated LaTeX packages
if (FALSE) {
  tinytex::install_tinytex(force = TRUE)
  message("TeX root: ", tinytex::tinytex_root())
  tinytex::tlmgr_update()
  tinytex::tlmgr_install("nowidow")  # QDNAseq
  tinytex::tlmgr_install("wrapfig")  # tramvs
  tinytex::tlmgr_install("apacite")  # ctsem
}

## Add packages to check
revdep/run.R --add-children

## Drop packages no longer on CRAN (2026-02-19)
revdep/run.R --rm forecastML

## Drop packages failing on Bioconductor (2026-02-19)
revdep/run.R --rm MineICA

## Too many cores because of detectCores()
# NSLOTS=4 revdep/run.R --add FracFixR lavDiag
