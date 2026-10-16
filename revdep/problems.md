# adestr (1.0.0)

* Email: <mailto:meis@imbi.uni-heidelberg.de>
* GitHub mirror: <https://github.com/cran/adestr>

Run `revdepcheck::revdep_details(, "adestr")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘IntervalEstimator-class.Rd’ ‘PValue-class.Rd’
         ‘PointEstimator-class.Rd’ ‘analyze.R’ ‘estimators.R’
         ‘evaluate_estimator.R’ ‘fisher_information.R’
         ‘integrate_over_sample_space.R’ ‘mle_distribution.R’ ‘n2c2_helpers.R’
         ‘plot.R’ ‘print.R’ ‘reference_implementation.R’
     ```

# altdoc (0.7.3)

* GitHub: <https://github.com/etiennebacher/altdoc>
* Email: <mailto:etienne.bacher@protonmail.com>
* GitHub mirror: <https://github.com/cran/altdoc>

Run `revdepcheck::revdep_details(, "altdoc")` for more info

## In both

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘testpkg19107e49002ddb’
     ```

# conformalInference.fd (1.1.1)

* GitHub: <https://github.com/ryantibs/conformal>
* Email: <mailto:paolo.vergottini@gmail.com>
* GitHub mirror: <https://github.com/cran/conformalInference.fd>

Run `revdepcheck::revdep_details(, "conformalInference.fd")` for more info

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Mismatches for apparent methods not registered:
     max:
       function(..., na.rm)
     max.lol:
       function(l)
     
     min:
       function(..., na.rm)
     min.lol:
       function(l)
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

# CrcBiomeScreen (1.0.0)

* GitHub: <https://github.com/omicsForestry/CrcBiomeScreen>
* Email: <mailto:ngzh5554@leeds.ac.uk>

Run `revdepcheck::revdep_details(, "CrcBiomeScreen")` for more info

## In both

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘roc.curve.rf.RF_TSS_toydata_Validation.pdf’
     ```

# cSEM (0.7.1)

* GitHub: <https://github.com/FloSchuberth/cSEM>
* Email: <mailto:f.schuberth@utwente.nl>
* GitHub mirror: <https://github.com/cran/cSEM>

Run `revdepcheck::revdep_details(, "cSEM")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘Rdpack’
       All declared Imports should be used.
     ```

# future.batchtools (0.22.0)

* GitHub: <https://github.com/futureverse/future.batchtools>
* Email: <mailto:henrikb@braju.com>
* GitHub mirror: <https://github.com/cran/future.batchtools>

Run `revdepcheck::revdep_details(, "future.batchtools")` for more info

## In both

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘.future-set-during-startup’
     ```

# hero (0.6)

* Email: <mailto:joshua.french@ucdenver.edu>
* GitHub mirror: <https://github.com/cran/hero>

Run `revdepcheck::revdep_details(, "hero")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     ...
     localhost::pid3811565.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     localhost::pid3811565: PSM3 can't open nic unit: 0 (err=23)
     localhost::pid3811565.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     localhost::pid3811565.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     No OpenFabrics connection schemes reported that they were able to be
     used on a specific port.  As such, the openib BTL (OpenFabrics
     support) will be disabled for this port.
     
       Local host:           dev3
       Local device:         mlx5_0
       Local port:           1
       CPCs attempted:       rdmacm, udcm
     --------------------------------------------------------------------------
     localhost::pid3811565: PSM3 can't open nic unit: 0 (err=23)
     localhost::pid3811565.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     localhost::pid3811565.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
     unusual; your job may behave unpredictably (and/or abort) after this.
     
       Local host: dev3
       Location: mtl_ofi_component.c:513
       Error: Invalid argument (22)
     --------------------------------------------------------------------------
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) hero.Rd:67-68: Lost braces
         67 | then \code{\link[pbapply]{pblapply}} is used. If code{package ==
            |                                                      ^
     checkRd: (-1) hero.Rd:69: Lost braces
         69 | code{package == "Rmpi"}, then \code{\link[Rmpi]{mpi.applyLB}} is used.}
            |     ^
     ```

*   checking for detritus in the temp directory ... NOTE
     ```
     Found the following files/directories:
       ‘ompi.dev3.34002’
     ```

# ivmte (1.4.0)

* Email: <mailto:jkcshea@uchicago.edu>
* GitHub mirror: <https://github.com/cran/ivmte>

Run `revdepcheck::revdep_details(, "ivmte")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) sTsls.Rd:17: Lost braces; missing escapes or markup?
         17 | \item{pi}{the matrix E[XZ']E[ZZ']^{-1}}
            |                                   ^
     checkRd: (-1) sTslsSplines.Rd:20: Lost braces; missing escapes or markup?
         20 | \item{pi}{matrix, corresponds to E[XZ']E[ZZ']^{-1}, the first stage
            |                                               ^
     ```

# kappaGold (0.4.0)

* Email: <mailto:matthias.kuhn@tu-dresden.de>
* GitHub mirror: <https://github.com/cran/kappaGold>

Run `revdepcheck::revdep_details(, "kappaGold")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘kappa_inference.R’
     ```

# MAI (1.18.0)

* GitHub: <https://github.com/KechrisLab/MAI>
* Email: <mailto:Jonathan.Dekermanjian@CUAnschutz.edu>

Run `revdepcheck::revdep_details(, "MAI")` for more info

## In both

*   checking top-level files ... NOTE
     ```
     File
       LICENSE
     is not mentioned in the DESCRIPTION file.
     ```

# mlr3resampling (2026.9.24)

* GitHub: <https://github.com/tdhock/mlr3resampling>
* Email: <mailto:toby.hocking@r-project.org>
* GitHub mirror: <https://github.com/cran/mlr3resampling>

Run `revdepcheck::revdep_details(, "mlr3resampling")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     ...
     localhost::pid4077518.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     localhost::pid4077518: PSM3 can't open nic unit: 0 (err=23)
     localhost::pid4077518.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     localhost::pid4077518.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     No OpenFabrics connection schemes reported that they were able to be
     used on a specific port.  As such, the openib BTL (OpenFabrics
     support) will be disabled for this port.
     
       Local host:           dev3
       Local device:         mlx5_0
       Local port:           1
       CPCs attempted:       rdmacm, udcm
     --------------------------------------------------------------------------
     localhost::pid4077518: PSM3 can't open nic unit: 0 (err=23)
     localhost::pid4077518.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     localhost::pid4077518.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
     unusual; your job may behave unpredictably (and/or abort) after this.
     
       Local host: dev3
       Location: mtl_ofi_component.c:513
       Error: Invalid argument (22)
     --------------------------------------------------------------------------
     ```

# mlr3summary (0.1.2)

* GitHub: <https://github.com/mlr-org/mlr3summary>
* Email: <mailto:dandls.datascience@gmail.com>
* GitHub mirror: <https://github.com/cran/mlr3summary>

Run `revdepcheck::revdep_details(, "mlr3summary")` for more info

## In both

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘fastshap’ in Rd xrefs
     ```

# nestedcv (0.9.0)

* GitHub: <https://github.com/myles-lewis/nestedcv>
* Email: <mailto:myles.lewis@qmul.ac.uk>
* GitHub mirror: <https://github.com/cran/nestedcv>

Run `revdepcheck::revdep_details(, "nestedcv")` for more info

## In both

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘CORElearn’ in Rd xrefs
     ```

# OutSeekR (1.1.0)

* Email: <mailto:pboutros@sbpdiscovery.org>
* GitHub mirror: <https://github.com/cran/OutSeekR>

Run `revdepcheck::revdep_details(, "OutSeekR")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘future’ ‘truncnorm’
       All declared Imports should be used.
     ```

# PAMpal (1.6.1)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMpal>

Run `revdepcheck::revdep_details(, "PAMpal")` for more info

## In both

*   checking whether package ‘PAMpal’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck/future.apply/checks/PAMpal/new/PAMpal.Rcheck/00install.out’ for details.
     ```

# PAMscapes (0.17.2)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMscapes>

Run `revdepcheck::revdep_details(, "PAMscapes")` for more info

## In both

*   checking whether package ‘PAMscapes’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck/future.apply/checks/PAMscapes/new/PAMscapes.Rcheck/00install.out’ for details.
     ```

# pavo (2.10.0)

* GitHub: <https://github.com/rmaia/pavo>
* Email: <mailto:thomas.white026@gmail.com>
* GitHub mirror: <https://github.com/cran/pavo>

Run `revdepcheck::revdep_details(, "pavo")` for more info

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck/future.apply/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
     ```

# powRICLPM (0.2.1)

* GitHub: <https://github.com/JeroenDMulder/powRICLPM>
* Email: <mailto:j.d.mulder@uu.nl>
* GitHub mirror: <https://github.com/cran/powRICLPM>

Run `revdepcheck::revdep_details(, "powRICLPM")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘save.R’
     ```

# qape (2.1)

* Email: <mailto:alicja.wolny-dominiak@ue.katowice.pl>
* GitHub mirror: <https://github.com/cran/qape>

Run `revdepcheck::revdep_details(, "qape")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) srswrRe.Rd:10: Lost braces
         10 |   \item{listRanef}{{\emph{ranef(model)}} object where {\emph{model}} is an { \emph{lmer}} object.}
            |                                                                            ^
     ```

# rtemis (1.2.7)

* GitHub: <https://github.com/rtemis-org/rtemis>
* Email: <mailto:gennatas@gmail.com>
* GitHub mirror: <https://github.com/cran/rtemis>

Run `revdepcheck::revdep_details(, "rtemis")` for more info

## In both

*   checking tests ...
     ```
     ...
       
       2026-10-15 14:03:48 [0m[1;38;2;15;106;102m✓[0m Done in 0.51 seconds.[0m [train]
       [ FAIL 1 | WARN 4 | SKIP 4 | PASS 356 ]
       
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • For local testing only; requires CSV file (3): 'test_ClusterConfig.R:19:3',
         'test_DecomposeConfig.R:19:3', 'test_SuperConfig.R:48:3'
       • empty test (1):
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_Clustering.R:96:3'): cluster_DBSCAN() succeeds ─────────────────
       Error: approx must be a single, finite, nonnegative number.
       Backtrace:
           ▆
        1. └─rtemis::cluster(...) at test_Clustering.R:96:3
        2.   └─rtemis:::cluster_(config = config, x = x, verbosity = verbosity) at rtemis/R/cluster.R:86:3
        3.     ├─S7::S7_dispatch() at rtemis/R/00_init.R:268:5
        4.     └─rtemis (local) `method(cluster_, rtemis::DBSCANConfig)`(...)
        5.       └─dbscan::dbscan(...) at rtemis/R/cluster_DBSCAN.R:22:3
        6.         └─dbscan:::.validate_nonnegative_scalar(extra$approx %||% 0, "approx")
       
       [ FAIL 1 | WARN 4 | SKIP 4 | PASS 356 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# Seqtometry (1.0.1)

* GitHub: <https://github.com/HawigerLab/Seqtometry>
* Email: <mailto:robert.kousnetsov@health.slu.edu>

Run `revdepcheck::revdep_details(, "Seqtometry")` for more info

## In both

*   checking examples ... WARNING
     ```
     Found the following significant warnings:
     
       Warning in .local(x, ...) : 'quickPerCellQC' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'quickPerCellQC' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
     Deprecated functions may be defunct as soon as of the next release of
     R.
     See ?Deprecated.
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘DelayedMatrixStats’ ‘sparseMatrixStats’
       All declared Imports should be used.
     ```

*   checking R code for possible problems ... NOTE
     ```
     score: warning in assert_list(signatures, type = "character"): partial
       argument match of 'type' to 'types'
       (/scratch/hb/revdepcheck/future.apply/checks/Seqtometry/new/Seqtometry.Rcheck/00_pkg_src/Seqtometry/R/score.R:58)
     ```

# signeR (2.14.0)

* GitHub: <https://github.com/TojalLab/signeR>
* Email: <mailto:renan.valieris@accamargo.org.br>

Run `revdepcheck::revdep_details(, "signeR")` for more info

## In both

*   checking whether package ‘signeR’ can be installed ... NOTE
     ```
     Found the following notes/warnings:
       SystemRequirements specified C++14: support has been removed
     See ‘/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00install.out’ for details.
     ```

*   checking C++ specification ... NOTE
     ```
       Obsolete C++14 standard request will be ignored
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Col’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_learning.R:367-371)
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Frequency’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_learning.R:367-371)
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Row’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_learning.R:367-371)
     ExposureCorrelation,SignExp-numeric: no visible binding for global
       variable ‘Feature’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_tests.R:569-575)
     ExposureCorrelation,SignExp-numeric: no visible binding for global
       variable ‘exposure’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_tests.R:569-575)
     ExposureCorrelation,matrix-numeric: no visible binding for global
       variable ‘Feature’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_tests.R:461-467)
     ExposureCorrelation,matrix-numeric: no visible binding for global
       variable ‘exposure’
       (/scratch/hb/revdepcheck/future.apply/checks/signeR/new/signeR.Rcheck/00_pkg_src/signeR/R/SignExp_tests.R:461-467)
     Undefined global functions or variables:
       . Col Feature Frequency Reference_Allele Row Samples Signatures
       Tumor_Seq_Allele1 Tumor_Seq_Allele2 Variant_Type conf.high conf.low
       estimate exposure fc p.value project sig sig_test term
     ```

*   checking Rd files ... NOTE
     ```
     prepare_Rd: cosmic_data.Rd:91-93: Dropping empty section \details
     prepare_Rd: cosmic_data.Rd:98-100: Dropping empty section \references
     prepare_Rd: cosmic_data.Rd:101-102: Dropping empty section \examples
     prepare_Rd: tcga_similarities.Rd:96-98: Dropping empty section \details
     prepare_Rd: tcga_similarities.Rd:99-101: Dropping empty section \source
     prepare_Rd: tcga_similarities.Rd:102-104: Dropping empty section \references
     prepare_Rd: tcga_similarities.Rd:105-106: Dropping empty section \examples
     prepare_Rd: tcga_tumors.Rd:18-20: Dropping empty section \details
     prepare_Rd: tcga_tumors.Rd:21-23: Dropping empty section \source
     prepare_Rd: tcga_tumors.Rd:24-26: Dropping empty section \references
     prepare_Rd: tcga_tumors.Rd:27-28: Dropping empty section \examples
     ```

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘tmp.pdf’
     ```

# solitude (1.1.3)

* GitHub: <https://github.com/talegari/solitude>
* Email: <mailto:sri.teach@gmail.com>
* GitHub mirror: <https://github.com/cran/solitude>

Run `revdepcheck::revdep_details(, "solitude")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘R6’ ‘lgr’
       All declared Imports should be used.
     ```

# sperrorest (3.0.5)

* GitHub: <https://github.com/giscience-fsu/sperrorest>
* Email: <mailto:alexander.brenning@uni-jena.de>
* GitHub mirror: <https://github.com/cran/sperrorest>

Run `revdepcheck::revdep_details(, "sperrorest")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     ...
            |                                          ^
     checkRd: (-1) partition_kmeans.Rd:41: Lost braces; missing escapes or markup?
         41 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
            |                                          ^
     checkRd: (-1) partition_tiles.Rd:78: Lost braces; missing escapes or markup?
         78 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
            |                                          ^
     checkRd: (-1) sperrorest.Rd:55: Lost braces; missing escapes or markup?
         55 | \code{formula} and \code{data} argument, which are provided by {sperrorest})}
            |                                                                ^
     checkRd: (-1) sperrorest.Rd:63: Lost braces; missing escapes or markup?
         63 | {sperrorest}).}
            | ^
     checkRd: (-1) sperrorest.Rd:135: Lost braces; missing escapes or markup?
        135 | A list (object of class {sperrorest}) with (up to) six components:
            |                         ^
     checkRd: (-1) sperrorest.Rd:148: Lost braces; missing escapes or markup?
        148 | information about the {sperrorest} package version
            |                       ^
     checkRd: (-1) summary.sperroresterror.Rd:5: Lost braces; missing escapes or markup?
          5 | \title{Summarize error statistics obtained by {sperrorest}}
            |                                               ^
     checkRd: (-1) summary.sperrorestimportance.Rd:5: Lost braces; missing escapes or markup?
          5 | \title{Summarize variable importance statistics obtained by {sperrorest}}
            |                                                             ^
     ```

# stppSim (1.3.4)

* GitHub: <https://github.com/Manalytics/stppSim>
* Email: <mailto:monsuur2010@yahoo.com>
* GitHub mirror: <https://github.com/cran/stppSim>

Run `revdepcheck::revdep_details(, "stppSim")` for more info

## In both

*   checking whether package ‘stppSim’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck/future.apply/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
     ```

# txshift (0.3.8)

* GitHub: <https://github.com/nhejazi/txshift>
* Email: <mailto:nh@nimahejazi.org>
* GitHub mirror: <https://github.com/cran/txshift>

Run `revdepcheck::revdep_details(, "txshift")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
         55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
            |  ^
     checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
         55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
            |               ^
     checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
         55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
            |                                ^
     ```

