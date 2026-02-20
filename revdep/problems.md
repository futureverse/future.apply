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

# ClustIRR (1.8.0)

* GitHub: <https://github.com/snaketron/ClustIRR>
* Email: <mailto:simokitanovski@gmail.com>

Run `revdepcheck::revdep_details(, "ClustIRR")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
     Package listed in more than one of Depends, Imports, Suggests, Enhances:
       ‘ggplot2’
     A package should be listed in only one of these fields.
     ```

*   checking R code for possible problems ... NOTE
     ```
     get_ag_gene_hits: no visible binding for global variable ‘cells’
     get_ag_gene_hits: no visible binding for global variable ‘clones’
     get_ag_gene_hits: no visible binding for global variable ‘community’
     get_ag_gene_hits: no visible binding for global variable ‘ag’
     get_ag_species_hits: no visible binding for global variable ‘cells’
     get_ag_species_hits: no visible binding for global variable ‘clones’
     get_ag_species_hits: no visible binding for global variable ‘community’
     get_ag_species_hits: no visible binding for global variable ‘ag’
     get_beta_violin: no visible binding for global variable ‘spec’
     get_beta_violin: no visible binding for global variable ‘size’
     get_honeycombs: no visible binding for global variable ‘x_adj’
     get_honeycombs: no visible binding for global variable ‘y_adj’
     get_honeycombs: no visible binding for global variable ‘..count..’
     Undefined global functions or variables:
       ..count.. ag cells clones community size spec x_adj y_adj
     ```

# cSEM (0.6.1)

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

# ctsem (3.10.6)

* GitHub: <https://github.com/cdriveraus/ctsem>
* Email: <mailto:charles.driver2@uzh.ch>
* GitHub mirror: <https://github.com/cran/ctsem>

Run `revdepcheck::revdep_details(, "ctsem")` for more info

## In both

*   checking whether package ‘ctsem’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: namespace ‘colorspace’ is not available and has been replaced
     See ‘/scratch/henrik/revdep/future.apply/checks/ctsem/new/ctsem.Rcheck/00install.out’ for details.
     ```

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
       ...
     --- re-building ‘hierarchicalmanual.rnw’ using knitr_notangle
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'hierarchicalmanual.rnw' failed with diagnostics:
     unable to run pdflatex on 'hierarchicalmanual.tex'
     LaTeX errors:
     ! LaTeX Error: File `apacite.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.62 \bibliographystyle
                            {apacite}     % Set bibliography style^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘hierarchicalmanual.rnw’
     
     SUMMARY: processing the following file failed:
       ‘hierarchicalmanual.rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# disk.frame (0.8.3)

* GitHub: <https://github.com/DiskFrame/disk.frame>
* Email: <mailto:zhuojia.dai@gmail.com>
* GitHub mirror: <https://github.com/cran/disk.frame>

Run `revdepcheck::revdep_details(, "disk.frame")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) csv_to_disk.frame.Rd:56: Lost braces; missing escapes or markup?
         56 | strings, and you are encouraged to use {fasttime} to convert the strings to
            |                                        ^
     checkRd: (-1) purrr_as_mapper.Rd:10: Lost braces; missing escapes or markup?
         10 | \item{.f}{a normal function or purrr syntax function i.e. `~{ ...code...}`}
            |                                                             ^
     ```

# EFAtools (0.6.1)

* GitHub: <https://github.com/mdsteiner/EFAtools>
* Email: <mailto:markus.d.steiner@gmail.com>
* GitHub mirror: <https://github.com/cran/EFAtools>

Run `revdepcheck::revdep_details(, "EFAtools")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘progress’
       All declared Imports should be used.
     ```

# fabletools (0.6.1)

* GitHub: <https://github.com/tidyverts/fabletools>
* Email: <mailto:mail@mitchelloharawild.com>
* GitHub mirror: <https://github.com/cran/fabletools>

Run `revdepcheck::revdep_details(, "fabletools")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
      2 Adelaide       South Australia    Holiday  157.   27.1 
      3 Adelaide       South Australia    Other     56.6  17.3 
      4 Adelaide       South Australia    Visiting 205.   32.5 
      5 Adelaide Hills South Australia    Business   2.66  4.30
      6 Adelaide Hills South Australia    Holiday   10.5   6.37
      7 Adelaide Hills South Australia    Other      1.40  1.65
      8 Adelaide Hills South Australia    Visiting  14.2  10.7 
      9 Alice Springs  Northern Territory Business  14.6   7.20
     10 Alice Springs  Northern Territory Holiday   31.9  18.1 
     # ℹ 294 more rows
     > 
     > # Search and use useful features with `feature_set()`. 
     > 
     > ## Don't show: 
     > if (requireNamespace("feasts", quietly = TRUE)) withAutoprint({ # examplesIf
     + ## End(Don't show)
     + library(feasts)
     + ## Don't show: 
     + }) # examplesIf
     > ## End(Don't show)
     > tourism %>% 
     +   features(Trips, features = feature_set(tags = "autocorrelation"))
     Error in .l[[1]] : subscript out of bounds
     Calls: %>% ... features.tbl_ts -> features_impl -> map -> lapply -> FUN -> transpose
     Execution halted
     ```

# FracFixR (1.0.0)

* Email: <mailto:alice.cleynen@cnrs.fr>
* GitHub mirror: <https://github.com/cran/FracFixR>

Run `revdepcheck::revdep_details(, "FracFixR")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
          ▆
       1. ├─FracFixR::FracFixR(MatrixCounts = counts, Annotation = annotation)
       2. │ └─future::plan(...)
       3. │   └─future (local) plan_set(...)
       4. │     └─future:::plan_init(stack[[1]], debug = debug)
       5. │       └─future:::makeFutureBackend(evaluator, debug = debug)
       6. │         └─base::do.call(factory, args = args, envir = envir)
       7. └─future (local) `<fn>`(workers = 255)
       8.   └─future::ClusterFutureBackend(...)
       9.     └─clusterRegistry$startCluster(...)
      10.       └─future (local) makeCluster(workers, ...)
      11.         ├─base::do.call(makeClusterPSOCK, args = args, quote = TRUE)
      12.         └─parallelly (local) `<fn>`(base::quote(255L), rscript_libs = base::quote(`<chr>`))
      13.           └─parallelly:::checkNumberOfLocalWorkers(workers)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'FracFixR-intro.Rmd' failed with diagnostics:
     Attempting to set up 255 localhost parallel workers with only 5 CPU cores available for this R process (per 'N/A'), which could result in a 5100% load. The hard limit is set to 300%. Overusing the CPUs has negative impact on the current R process, but also on all other processes of yours and others running on the same machine. See help("parallelly.maxWorkers.localhost", package = "parallelly") for further explanations and how to override the hard limit that triggered this error. By the way, was parallel::detectCores() used, because the number of workers (255) equals detectCores() - 1? If so, please use parallelly::availableCores() instead
     --- failed re-building ‘FracFixR-intro.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘FracFixR-intro.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# hero (0.6)

* Email: <mailto:joshua.french@ucdenver.edu>
* GitHub mirror: <https://github.com/cran/hero>

Run `revdepcheck::revdep_details(, "hero")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) hero.Rd:67-68: Lost braces
         67 | then \code{\link[pbapply]{pblapply}} is used. If code{package ==
            |                                                      ^
     checkRd: (-1) hero.Rd:69: Lost braces
         69 | code{package == "Rmpi"}, then \code{\link[Rmpi]{mpi.applyLB}} is used.}
            |     ^
     ```

# InPAS (2.18.1)

* Email: <mailto:jou@morgridge.org>

Run `revdepcheck::revdep_details(, "InPAS")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     There are ::: calls to the package's namespace in its code. A package
       almost never needs to use ::: for its own objects:
       ‘adjust_distalCPs’ ‘adjust_proximalCPs’ ‘adjust_proximalCPsByNBC’
       ‘adjust_proximalCPsByPWM’ ‘calculate_mse’ ‘find_valleyBySpline’
       ‘get_PAscore’ ‘get_PAscore2’ ‘remove_convergentUTR3s’
       ‘search_distalCPs’ ‘search_proximalCPs’
     ```

*   checking Rd metadata ... NOTE
     ```
     Invalid package aliases in Rd file 'InPAS.Rd':
       ‘-package’
     ```

*   checking Rd \usage sections ... NOTE
     ```
     Documented arguments not in \usage in Rd file 'get_UTR3TotalCov.Rd':
       ‘gcCompensationensation’
     
     Functions with \usage entries need to have the appropriate \alias
     entries, and all their arguments documented.
     The \usage entries must correspond to syntactically valid R code.
     See chapter ‘Writing R documentation files’ in the ‘Writing R
     Extensions’ manual.
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

# lavDiag (0.1.0)

* GitHub: <https://github.com/reckak/lavDiag>
* Email: <mailto:reckak@mail.muni.cz>
* GitHub mirror: <https://github.com/cran/lavDiag>

Run `revdepcheck::revdep_details(, "lavDiag")` for more info

## In both

*   checking tests ...
     ```
     ...
         6. │     └─furrr:::furrr_template(...)
         7. │       ├─future::nbrOfWorkers()
         8. │       └─future:::nbrOfWorkers.NULL()
         9. │         └─future::plan("backend")
        10. │           └─future:::plan_init(strategy, debug = debug)
        11. │             └─future:::makeFutureBackend(evaluator, debug = debug)
        12. │               └─base::do.call(factory, args = args, envir = envir)
        13. └─future (local) `<fn>`(workers = 255L)
        14.   └─future::ClusterFutureBackend(...)
        15.     └─clusterRegistry$startCluster(...)
        16.       └─future (local) makeCluster(workers, ...)
        17.         ├─base::do.call(makeClusterPSOCK, args = args, quote = TRUE)
        18.         └─parallelly (local) `<fn>`(base::quote(255L), rscript_libs = base::quote(`<chr>`))
        19.           └─parallelly:::checkNumberOfLocalWorkers(workers)
       ── Error ('test-prepare.R:12:3'): prepare merges branches for mixed model ──────
       Error in `prepare(fit, length.out = 15)`: Neither continuous nor ordinal branch succeeded - check model/functions.
       Backtrace:
           ▆
        1. └─lavDiag::prepare(fit, length.out = 15) at test-prepare.R:12:3
        2.   └─rlang::abort("Neither continuous nor ordinal branch succeeded - check model/functions.")
       
       [ FAIL 3 | WARN 25 | SKIP 1 | PASS 28 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# MAI (1.16.0)

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

# mikropml (1.7.0)

* GitHub: <https://github.com/SchlossLab/mikropml>
* Email: <mailto:sovacool@umich.edu>
* GitHub mirror: <https://github.com/cran/mikropml>

Run `revdepcheck::revdep_details(, "mikropml")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘methods’
       All declared Imports should be used.
     ```

# nixtlar (0.6.2)

* GitHub: <https://github.com/Nixtla/nixtlar>
* Email: <mailto:mariana@nixtla.io>
* GitHub mirror: <https://github.com/cran/nixtlar>

Run `revdepcheck::revdep_details(, "nixtlar")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘get_model_params.R’ ‘level_from_quantiles.R’ ‘make_request.R’
         ‘nixtla_client_cross_validation.R’ ‘nixtla_client_detect_anomalies.R’
         ‘nixtla_client_forecast.R’ ‘nixtla_client_historic.R’
         ‘nixtla_client_plot.R’ ‘nixtla_validate_api_key.R’
         ‘validate_exogenous.R’
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

# PAMpal (1.4.4)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMpal>

Run `revdepcheck::revdep_details(, "PAMpal")` for more info

## In both

*   checking whether package ‘PAMpal’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/future.apply/checks/PAMpal/new/PAMpal.Rcheck/00install.out’ for details.
     ```

# PAMscapes (0.15.0)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMscapes>

Run `revdepcheck::revdep_details(, "PAMscapes")` for more info

## In both

*   checking whether package ‘PAMscapes’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/future.apply/checks/PAMscapes/new/PAMscapes.Rcheck/00install.out’ for details.
     ```

# pavo (2.9.0)

* GitHub: <https://github.com/rmaia/pavo>
* Email: <mailto:thomas.white026@gmail.com>
* GitHub mirror: <https://github.com/cran/pavo>

Run `revdepcheck::revdep_details(, "pavo")` for more info

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/future.apply/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
     ```

# pgxRpi (1.6.0)

* GitHub: <https://github.com/progenetix/pgxRpi>
* Email: <mailto:hangjia.zhao@uzh.ch>

Run `revdepcheck::revdep_details(, "pgxRpi")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     pgxSegprocess: no visible binding for global variable
       ‘followup_state_id’
     Undefined global functions or variables:
       followup_state_id
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

# QDNAseq (1.46.0)

* GitHub: <https://github.com/ccagc/QDNAseq>
* Email: <mailto:d.sie@vumc.nl>

Run `revdepcheck::revdep_details(, "QDNAseq")` for more info

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     Total time:0minutes
     
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'QDNAseq.Rnw' failed with diagnostics:
     unable to run pdflatex on 'QDNAseq.tex'
     LaTeX errors:
     ! LaTeX Error: File `nowidow.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.197 \RequirePackage
                          {parnotes}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘QDNAseq.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘QDNAseq.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# receptiviti (0.2.1)

* GitHub: <https://github.com/Receptiviti/receptiviti-r>
* Email: <mailto:kenglish@receptiviti.com>
* GitHub mirror: <https://github.com/cran/receptiviti>

Run `revdepcheck::revdep_details(, "receptiviti")` for more info

## In both

*   checking tests ...
     ```
     ...
       
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • no API key (4): 'test-receptiviti.R:78:1',
         'test-receptiviti_frameworks.R:1:1', 'test-receptiviti_norming.R:12:1',
         'test-receptiviti_status.R:13:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-receptiviti.R:9:3'): invalid inputs are caught ─────────────────
       Error: Invalid header received from client.
       
       Backtrace:
           ▆
        1. ├─testthat::expect_error(...) at test-receptiviti.R:9:3
        2. │ └─testthat:::expect_condition_matching_(...)
        3. │   └─testthat:::quasi_capture(...)
        4. │     ├─testthat (local) .capture(...)
        5. │     │ └─base::withCallingHandlers(...)
        6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. └─receptiviti::receptiviti(...)
        8.   └─receptiviti:::manage_request(...)
       
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 5 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# rsi (0.3.2)

* GitHub: <https://github.com/Permian-Global-Research/rsi>
* Email: <mailto:mike.mahoney.218@gmail.com>
* GitHub mirror: <https://github.com/cran/rsi>

Run `revdepcheck::revdep_details(, "rsi")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘calculate_indices.Rd’ ‘get_stac_data.R’ ‘get_stac_data.Rd’
         ‘landsat_mask_function.Rd’
     ```

# signeR (2.12.0)

* GitHub: <https://github.com/TojalLab/signeR>
* Email: <mailto:renan.valieris@accamargo.org.br>

Run `revdepcheck::revdep_details(, "signeR")` for more info

## In both

*   checking C++ specification ... NOTE
     ```
       Specified C++14: please drop specification unless essential
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
       ‘Samples’
     ExposureClassify,ANY-character: no visible binding for global variable
       ‘Col’
     ExposureClassify,ANY-character: no visible binding for global variable
       ‘Frequency’
     ExposureClassify,ANY-character: no visible binding for global variable
       ‘Row’
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Col’
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Frequency’
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Row’
     ExposureCorrelation,SignExp-numeric: no visible binding for global
       variable ‘Feature’
     ExposureCorrelation,SignExp-numeric: no visible binding for global
       variable ‘exposure’
     ExposureCorrelation,matrix-numeric: no visible binding for global
       variable ‘Feature’
     ExposureCorrelation,matrix-numeric: no visible binding for global
       variable ‘exposure’
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
     See ‘/scratch/henrik/revdep/future.apply/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
     ```

# tramvs (0.0-8)

* Email: <mailto:lucasheinrich.kook@gmail.com>
* GitHub mirror: <https://github.com/cran/tramvs>

Run `revdepcheck::revdep_details(, "tramvs")` for more info

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
       ...
     --- re-building ‘tramvs.Rnw’ using knitr
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'tramvs.Rnw' failed with diagnostics:
     unable to run pdflatex on 'tramvs.tex'
     LaTeX errors:
     ! LaTeX Error: File `wrapfig.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.68 \usepackage
                     {float}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘tramvs.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘tramvs.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# tsgarch (1.0.3)

* GitHub: <https://github.com/tsmodels/tsgarch>
* Email: <mailto:alexios@4dscape.com>
* GitHub mirror: <https://github.com/cran/tsgarch>

Run `revdepcheck::revdep_details(, "tsgarch")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘benchmark.R’ ‘print.R’
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

