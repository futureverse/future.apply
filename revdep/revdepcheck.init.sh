#! /usr/bin/env bash

## Missing or outdated LaTeX packages
false && R --quiet --no-save <<EOF
    tinytex::install_tinytex(force = TRUE)
    message("TeX root: ", tinytex::tinytex_root())
    tinytex::tlmgr_update()
    tinytex::tlmgr_install(c(
      "apacite",   # ctsem
      "nowidow",   # QDNAseq
      "wrapfig",   # tramvs
      "thumbpdf"   # lme4
    ))
EOF


## ---------------------------------------------------------------------
## Phase 1
## ---------------------------------------------------------------------

## Add packages to check
revdep/run.R --add-children

## Drop packages failing on CRAN (2026-10-08)
#revdep/run.R --rm ...

## Drop packages failing on Bioconductor (2026-10-10)
revdep/run.R --rm pgxRpi

## CRAN packages that need extra care (2026-10-10)
## 'pbdMPI' needs explicit 'configure.args' settings
## WORKAROUND: Install first as:
if ! Rscript -e 'quit(status = requireNamespace("pbdMPI", quietly = TRUE))'; then
    Rscript -e 'crancache::install_packages("pbdMPI", configure.args="--with-mpi-include=$MPI_INCLUDE --with-mpi-libpath=$MPI_LIB --with-mpi-type=OPENMPI", Ncpus = parallelly::availableCores())' || { >&2 echo "Please crancache install 'pdbMPI' from CRAN first"; exit 1; }
fi

## Bioconductor packages that need extra care (2026-10-10)
## 'lpsymphony' fails if another SYMPHONY installation is not the path
## WORKAROUND: Install first as:
## env -u PKG_CONFIG_PATH -u CPLUS_INCLUDE_PATH -u LIBRARY_PATH R -e 'crancache::install_packages("lpsymphony")'
if ! Rscript -e 'quit(status = requireNamespace("lpsymphony", quietly = TRUE))'; then
    env -u PKG_CONFIG_PATH -u CPLUS_INCLUDE_PATH -u LIBRARY_PATH Rscript -e 'crancache::install_packages("lpsymphony", Ncpus = parallelly::availableCores())' || { >&2 echo "Please crancache install 'lpsymphony' from Bioconductor first"; exit 1; }
fi

## Drop packages no longer on CRAN (2026-10-08)
#revdep/run.R --rm ...

## Drop packages no longer on Bioconductor (2026-10-08)
#revdep/run.R --rm ...

## Too many cores due to detectCores()
pkgs_detectCores=()
#revdep/run.R --rm "${pkgs_detectCores[@]}"

## Run revdep check
revdep/run.R


## ---------------------------------------------------------------------
## Phase 2
## ---------------------------------------------------------------------
## Set: Too many cores due to detectCores()
#revdep/run.R --add "${pkgs_detectCores[@]}"
#NSLOTS=4 revdep/run.R
