# adestr

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/adestr
* Date/Publication: 2024-07-12 13:50:09 UTC
* Number of recursive dependencies: 122

Run `revdepcheck::revdep_details(, "adestr")` for more info

</details>

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

# alphaci

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/alphaci
* Date/Publication: 2024-02-05 12:20:09 UTC
* Number of recursive dependencies: 73

Run `revdepcheck::revdep_details(, "alphaci")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘inference.R’ ‘transformers.R’ ‘variance.R’
    ```

# altdoc

<details>

* Version: 0.5.0
* GitHub: https://github.com/etiennebacher/altdoc
* Source code: https://github.com/cran/altdoc
* Date/Publication: 2025-01-23 16:40:07 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::revdep_details(, "altdoc")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Comparing ‘spelling.Rout’ to ‘spelling.Rout.save’ ... OK
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        5. │     │ └─base::withCallingHandlers(...)
        6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. └─altdoc::render_docs(path = getwd())
        8.   └─altdoc:::.import_vignettes(...)
    ...
       2.   └─altdoc:::.import_vignettes(...)
       3.     └─base::vapply(...)
       4.       └─altdoc (local) FUN(X[[i]], ...)
       5.         └─altdoc:::.render_one_vignette(...)
       6.           └─altdoc:::.qmd2md(origin, tar_dir, verbose = verbose, preamble = pre)
       7.             └─base::cat(out[[2]])
      
      [ FAIL 14 | WARN 1 | SKIP 3 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

# bcmaps

<details>

* Version: 2.2.1
* GitHub: https://github.com/bcgov/bcmaps
* Source code: https://github.com/cran/bcmaps
* Date/Publication: 2024-12-21 00:00:08 UTC
* Number of recursive dependencies: 120

Run `revdepcheck::revdep_details(, "bcmaps")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(bcmaps)
      Loading required package: sf
      Linking to GEOS 3.7.2, GDAL 3.0.4, PROJ 6.3.2; sf_use_s2() is TRUE
      Support for Spatial objects (`sp`) was removed in {bcmaps} v2.0.0. Please use `sf` objects with {bcmaps}.
      > 
    ...
        7.   ├─bcdata::bcdc_get_data(...)
        8.   └─bcdata:::bcdc_get_data.character(...)
        9.     ├─bcdata::bcdc_get_data(x, resource, verbose = verbose, ...)
       10.     └─bcdata:::bcdc_get_data.bcdc_record(...)
       11.       └─bcdata:::read_from_url(...)
       12.         └─r$raise_for_status()
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 237 ]
      Error: Test failures
      Execution halted
    ```

# bolasso

<details>

* Version: 0.3.0
* GitHub: https://github.com/dmolitor/bolasso
* Source code: https://github.com/cran/bolasso
* Date/Publication: 2024-12-08 22:20:12 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "bolasso")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘plot.R’ ‘utils.R’
    ```

# brms

<details>

* Version: 2.23.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2025-09-09 10:50:02 UTC
* Number of recursive dependencies: 218

Run `revdepcheck::revdep_details(, "brms")` for more info

</details>

## In both

*   R CMD check timed out
    

# chopin

<details>

* Version: 0.9.9
* GitHub: https://github.com/ropensci/chopin
* Source code: https://github.com/cran/chopin
* Date/Publication: 2025-09-10 15:40:02 UTC
* Number of recursive dependencies: 166

Run `revdepcheck::revdep_details(, "chopin")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘v01_start.Rmd’ using rmarkdown
    --- finished re-building ‘v01_start.Rmd’
    
    --- re-building ‘v02_good_practice.Rmd’ using rmarkdown
    --- finished re-building ‘v02_good_practice.Rmd’
    
    --- re-building ‘v03_par_pad_grid.Rmd’ using rmarkdown
    
    Quitting from v03_par_pad_grid.Rmd:307-324 [h3-grid]
    ...
    --- finished re-building ‘v04_climate_examples.Rmd’
    
    --- re-building ‘v05_targets.Rmd’ using rmarkdown
    --- finished re-building ‘v05_targets.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘v03_par_pad_grid.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ClustIRR

<details>

* Version: 1.6.0
* GitHub: https://github.com/snaketron/ClustIRR
* Source code: https://github.com/cran/ClustIRR
* Date/Publication: 2025-04-15
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "ClustIRR")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘ggplot2’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    get_ag_summary: no visible binding for global variable ‘community’
    get_beta_scatterplot : get_scatters: no visible binding for global
      variable ‘mean_x’
    get_beta_scatterplot : get_scatters: no visible binding for global
      variable ‘mean_y’
    get_beta_scatterplot : get_scatters: no visible binding for global
      variable ‘specificity’
    get_beta_scatterplot : get_scatters: no visible binding for global
      variable ‘size_x’
    get_beta_scatterplot : get_scatters: no visible binding for global
    ...
      ‘specificity’
    get_beta_violins : get_violins: no visible binding for global variable
      ‘size’
    get_beta_violins: no visible binding for global variable ‘community’
    get_honeycombs: no visible binding for global variable ‘x_adj’
    get_honeycombs: no visible binding for global variable ‘y_adj’
    get_honeycombs: no visible binding for global variable ‘..count..’
    Undefined global functions or variables:
      ..count.. community mean_x mean_y size size_x size_y specificity
      x_adj y_adj
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: decode_communities.Rd:21-23: Dropping empty section \details
    ```

# codalm

<details>

* Version: 0.1.2
* GitHub: https://github.com/jfiksel/codalm
* Source code: https://github.com/cran/codalm
* Date/Publication: 2021-07-26 18:40:02 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::revdep_details(, "codalm")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) educFM.Rd:22: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:23: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:24: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:25: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:26: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:27: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:28: Lost braces in \itemize; meant \describe ?
    ```

# collinear

<details>

* Version: 2.0.0
* GitHub: https://github.com/blasbenito/collinear
* Source code: https://github.com/cran/collinear
* Date/Publication: 2024-11-08 13:50:02 UTC
* Number of recursive dependencies: 47

Run `revdepcheck::revdep_details(, "collinear")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘collinear.R’ ‘cor_cramer_v.R’ ‘cor_df.R’ ‘cor_select.R’ ‘f_auc.Rd’
        ‘f_r2.Rd’ ‘f_r2_counts.Rd’ ‘f_v.Rd’ ‘f_v_rf_categorical.Rd’
        ‘identify.R’ ‘model_formula.R’ ‘preference_order.R’
        ‘preference_order_methods.R’ ‘target_encoding_methods.R’ ‘validate.R’
        ‘vif_df.R’ ‘vif_select.R’
    ```

# cSEM

<details>

* Version: 0.6.1
* GitHub: https://github.com/FloSchuberth/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2025-05-16 09:40:14 UTC
* Number of recursive dependencies: 143

Run `revdepcheck::revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# ctsem

<details>

* Version: 3.10.4
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2025-06-30 16:40:11 UTC
* Number of recursive dependencies: 165

Run `revdepcheck::revdep_details(, "ctsem")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking whether package ‘ctsem’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘colorspace’ is not available and has been replaced
    See ‘/scratch/henrik/revdep/future.apply/checks/ctsem/new/ctsem.Rcheck/00install.out’ for details.
    ```

# DeclareDesign

<details>

* Version: 1.0.10
* GitHub: https://github.com/DeclareDesign/DeclareDesign
* Source code: https://github.com/cran/DeclareDesign
* Date/Publication: 2024-04-21 20:52:45 UTC
* Number of recursive dependencies: 142

Run `revdepcheck::revdep_details(, "DeclareDesign")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
      • Skipped bootstrap SE test for speed (1): 'test-bootstrap-diagnosands.R:43:3'
      
      ══ Warnings ════════════════════════════════════════════════════════════════════
      ── Warning ('test-conduct-custom.R:36:3'): test error messages in run_design ───
      Caught simpleError. Canceling all iterations ...
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-reshape-diagnosis.R:133:3'): groups with factors ─────────────
      `expect_equal(...)` did not produce any warnings.
      ── Failure ('test-reshape-diagnosis.R:141:3'): groups with factors ─────────────
      `expect_equal(...)` did not produce any warnings.
      
      [ FAIL 2 | WARN 2 | SKIP 1 | PASS 566 ]
      Error: Test failures
      Execution halted
    ```

# dipsaus

<details>

* Version: 0.3.1
* GitHub: https://github.com/dipterix/dipsaus
* Source code: https://github.com/cran/dipsaus
* Date/Publication: 2025-04-03 16:50:02 UTC
* Number of recursive dependencies: 62

Run `revdepcheck::revdep_details(, "dipsaus")` for more info

</details>

## In both

*   checking compiled code ... NOTE
    ```
    File ‘dipsaus/libs/dipsaus.so’:
      Found non-API call to R: ‘ENCLOS’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual,
    and section ‘Moving into C API compliance’ for issues with the use of
    non-API entry points.
    ```

# disk.frame

<details>

* Version: 0.8.3
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-08-24 16:20:10 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::revdep_details(, "disk.frame")` for more info

</details>

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

# EFAtools

<details>

* Version: 0.6.1
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2025-07-30 14:10:02 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::revdep_details(, "EFAtools")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# EpiNow2

<details>

* Version: 1.7.1
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2025-02-19 23:40:09 UTC
* Number of recursive dependencies: 124

Run `revdepcheck::revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Comparing ‘spelling.Rout’ to ‘spelling.Rout.save’ ...9,65c9
    < Potential spelling errors:
    <   WORD              FOUND IN
    < Charniga          discrete_pmf.Rd:53
    <                   discretise.Rd:57
    < Matérn           gp_opts.Rd:63,68
    <                   NEWS.md:75,81
    <                   gaussian_process_implementation_details.Rmd:44,59,65,97
    < Ornstein          gp_opts.Rd:60
    ...
        5. ├─base::suppressWarnings(sims <- forecast_infections(out, backend = "cmdstanr"))
        6. │ └─base::withCallingHandlers(...)
        7. └─EpiNow2::forecast_infections(out, backend = "cmdstanr")
        8.   └─EpiNow2::stan_opts(...)
        9.     └─cli::cli_abort(...)
       10.       └─rlang::abort(...)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 552 ]
      Error: Test failures
      Execution halted
    ```

# fdacluster

<details>

* Version: 0.4.1
* GitHub: https://github.com/astamm/fdacluster
* Source code: https://github.com/cran/fdacluster
* Date/Publication: 2025-01-14 16:50:09 UTC
* Number of recursive dependencies: 125

Run `revdepcheck::revdep_details(, "fdacluster")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.2.0 because package code uses the pipe
      placeholder syntax added in R 4.2.0.
      File(s) using such syntax:
        ‘caps-plot.R’ ‘utils.R’
    ```

# ferrn

<details>

* Version: 0.1.0
* GitHub: https://github.com/huizezhang-sherry/ferrn
* Source code: https://github.com/cran/ferrn
* Date/Publication: 2024-06-23 22:30:07 UTC
* Number of recursive dependencies: 146

Run `revdepcheck::revdep_details(, "ferrn")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘calc-squintability.R’ ‘get.R’ ‘pipe-sine-boa.Rd’ ‘plot-projection.R’
        ‘projection.Rd’
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# future.batchtools

<details>

* Version: 0.20.0
* GitHub: https://github.com/futureverse/future.batchtools
* Source code: https://github.com/cran/future.batchtools
* Date/Publication: 2025-08-25 22:50:02 UTC
* Number of recursive dependencies: 37

Run `revdepcheck::revdep_details(, "future.batchtools")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘test-BatchtoolsFuture,gc.R’
      Running ‘test-BatchtoolsFuture.R’
      Running ‘test-BatchtoolsFutureError.R’
      Running ‘test-batchtools_bash.R’
      Running ‘test-batchtools_custom.R’
      Running ‘test-batchtools_hpc.R’
     ERROR
    Running the tests in ‘tests/test-batchtools_hpc.R’ failed.
    Last 50 lines of output:
      batchtools configuration file: '/scratch/henrik/revdep/future.apply/checks/future.batchtools/new/future.batchtools.Rcheck/future.batchtools/templates-for-R_CMD_check/batchtools.conf.R' (82 bytes; 1 lines)
    ...
        Jobs     : 1
        Seed     : 24644
        Writeable: TRUE
      Warning: batchtools::waitForJobs(..., timeout = 2592000) returned FALSE
      Warning in delete.BatchtoolsFuture(future) :
        Will not remove batchtools registry, because the status of the batchtools was 'error', 'defined', 'expired', 'submitted' and future backend argument 'delete' is 'on-success': '/scratch/henrik/859397/RtmpZlDEDF/.future/20250918_212138-ZlDEDF/batchtools_740162139'
      Error: Future (<unnamed-1>) of class BatchtoolsSlurmFuture expired, which indicates that it crashed or was killed. No logged output file exist (at the moment)
      Execution halted
      Warning in delete.BatchtoolsFuture(f, onRunning = "skip", onMissing = "ignore",  :
        Will not remove batchtools registry, because the status of the batchtools was 'error', 'defined', 'expired', 'submitted' and future backend argument 'delete' is 'on-success': '/scratch/henrik/859397/RtmpZlDEDF/.future/20250918_212138-ZlDEDF/batchtools_740162139'
    ```

# geocmeans

<details>

* Version: 0.3.4
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2023-09-12 03:10:02 UTC
* Number of recursive dependencies: 208

Run `revdepcheck::revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘introduction.Rmd’ using rmarkdown
    
    Quitting from introduction.Rmd:487-489 [unnamed-chunk-38]
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    <error/rlang_error>
    Error in `st_transform.bbox()`:
    ! method not available for GDAL: 3.0.4
    ---
    Backtrace:
    ...
    
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    method not available for GDAL: 3.0.4
    --- failed re-building ‘introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# hero

<details>

* Version: 0.6
* GitHub: NA
* Source code: https://github.com/cran/hero
* Date/Publication: 2023-07-15 21:10:09 UTC
* Number of recursive dependencies: 158

Run `revdepcheck::revdep_details(, "hero")` for more info

</details>

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

# hydroloom

<details>

* Version: 1.1.0
* GitHub: https://github.com/DOI-USGS/hydroloom
* Source code: https://github.com/cran/hydroloom
* Date/Publication: 2024-08-26 06:20:02 UTC
* Number of recursive dependencies: 146

Run `revdepcheck::revdep_details(, "hydroloom")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘add_divergence.R’ ‘add_levelpaths.R’ ‘add_pfafstetter.R’
        ‘add_streamorder-level.R’ ‘add_toids.R’ ‘disambiguate.R’
        ‘format_index_ids.Rd’ ‘get_hydro_location.R’
        ‘index_points_to_lines.R’ ‘make_attribute_topology.R’
        ‘make_index_ids.R’ ‘make_node_topology.R’
        ‘navigate_connected_paths.R’ ‘navigation_network.R’ ‘sort_network.R’
        ‘to_flownetwork.R’ ‘utils.R’
    ```

# important

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidymodels/important
* Source code: https://github.com/cran/important
* Date/Publication: 2025-09-05 18:30:02 UTC
* Number of recursive dependencies: 121

Run `revdepcheck::revdep_details(, "important")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Comparing ‘spelling.Rout’ to ‘spelling.Rout.save’ ... OK
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
          filter, lag
      
      The following objects are masked from 'package:base':
    ...
      `expected` is a list
      ── Failure ('test-plots.R:114:3'): autoplot - classification ───────────────────
      p3$labels (`actual`) not equal to list(y = NULL, x = "Permutation Importance Score", xintercept = "xintercept") (`expected`).
      
      `actual` is an S7 object of class <ggplot2::labels>
      `expected` is a list
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 280 ]
      Error: Test failures
      Execution halted
    ```

# InPAS

<details>

* Version: 2.16.0
* GitHub: NA
* Source code: https://github.com/cran/InPAS
* Date/Publication: 2025-04-15
* Number of recursive dependencies: 163

Run `revdepcheck::revdep_details(, "InPAS")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link(s) in Rd file 'get_ssRleCov.Rd':
      ‘[BSgenome:BSgenomeForge]{BSgenome::forgeBSgenomeDataPkg()}’
    
    Missing link(s) in Rd file 'set_globals.Rd':
      ‘[BSgenome:BSgenomeForge]{BSgenome::forgeBSgenomeDataPkg()}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘adjust_distalCPs’ ‘adjust_proximalCPs’ ‘adjust_proximalCPsByNBC’
      ‘adjust_proximalCPsByPWM’ ‘calculate_mse’ ‘find_valleyBySpline’
      ‘get_PAscore’ ‘get_PAscore2’ ‘remove_convergentUTR3s’
      ‘search_distalCPs’ ‘search_proximalCPs’
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

# InterpolateR

<details>

* Version: 1.4-3
* GitHub: https://github.com/Jonnathan-Landi/InterpolateR
* Source code: https://github.com/cran/InterpolateR
* Date/Publication: 2025-09-04 04:50:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "InterpolateR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
          ▆
       1. └─InterpolateR::RFplus(...) at test-RFplus.R:89:3
       2.   ├─stats::setNames(...)
       3.   └─base::lapply(...)
       4.     └─InterpolateR (local) FUN(X[[i]], ...)
       5.       ├─terra::distance(DEM, Points_VectTrain[i, ], rasterize = FALSE)
    ...
       10.     └─InterpolateR (local) FUN(X[[i]], ...)
       11.       ├─terra::distance(DEM, Points_VectTrain[i, ], rasterize = FALSE)
       12.       └─terra::distance(DEM, Points_VectTrain[i, ], rasterize = FALSE)
       13.         └─terra (local) .local(x, y, ...)
       14.           └─terra:::messages(x, "distance")
       15.             └─terra:::error(f, x@pntr$getError())
      
      [ FAIL 14 | WARN 22 | SKIP 0 | PASS 120 ]
      Error: Test failures
      Execution halted
    ```

# ivmte

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/ivmte
* Date/Publication: 2021-09-17 12:20:07 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::revdep_details(, "ivmte")` for more info

</details>

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

# kappaGold

<details>

* Version: 0.4.0
* GitHub: NA
* Source code: https://github.com/cran/kappaGold
* Date/Publication: 2024-12-09 22:50:02 UTC
* Number of recursive dependencies: 49

Run `revdepcheck::revdep_details(, "kappaGold")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘kappa_inference.R’
    ```

# lava

<details>

* Version: 1.8.1
* GitHub: https://github.com/kkholst/lava
* Source code: https://github.com/cran/lava
* Date/Publication: 2025-01-12 11:40:02 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::revdep_details(, "lava")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘contr.Rd’
    ```

# MAI

<details>

* Version: 1.14.0
* GitHub: https://github.com/KechrisLab/MAI
* Source code: https://github.com/cran/MAI
* Date/Publication: 2025-04-15
* Number of recursive dependencies: 173

Run `revdepcheck::revdep_details(, "MAI")` for more info

</details>

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# malariaAtlas

<details>

* Version: 1.6.4
* GitHub: https://github.com/malaria-atlas-project/malariaAtlas
* Source code: https://github.com/cran/malariaAtlas
* Date/Publication: 2025-06-11 11:00:06 UTC
* Number of recursive dependencies: 118

Run `revdepcheck::revdep_details(, "malariaAtlas")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       3. │   ├─testthat (local) .capture(...)
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. └─malariaAtlas::extractRaster(...)
       7.   └─base::lapply(...)
       8.     └─malariaAtlas (local) FUN(X[[i]], ...)
    ...
       2.   └─base::sapply(...)
       3.     └─base::lapply(X = X, FUN = FUN, ...)
       4.       └─malariaAtlas (local) FUN(X[[i]], ...)
       5.         └─malariaAtlas:::download_rst(...)
       6.           └─wcs_client$getCoverage(...)
       7.             └─cov$getCoverage(...)
      
      [ FAIL 21 | WARN 13 | SKIP 1 | PASS 268 ]
      Error: Test failures
      Execution halted
    ```

# merTools

<details>

* Version: 0.6.3
* GitHub: https://github.com/jknowles/merTools
* Source code: https://github.com/cran/merTools
* Date/Publication: 2025-09-05 19:30:02 UTC
* Number of recursive dependencies: 142

Run `revdepcheck::revdep_details(, "merTools")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat-a_m.R’
      Running ‘testthat-m_z.R’
     ERROR
    Running the tests in ‘tests/testthat-m_z.R’ failed.
    Complete output:
      > library(testthat)
      > library(merTools)
      Loading required package: arm
      Loading required package: MASS
      Loading required package: Matrix
    ...
      -   7   0.008824511 1.433126 -1.449001
      +   7   0.008823944 1.433126 -1.449003
      and 3 more ...
      
      * Run `testthat::snapshot_accept('predict2')` to accept the change.
      * Run `testthat::snapshot_review('predict2')` to interactively review the change.
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 489 ]
      Error: Test failures
      Execution halted
    ```

# MIC

<details>

* Version: 1.1.0
* GitHub: https://github.com/agerada/MIC
* Source code: https://github.com/cran/MIC
* Date/Publication: 2025-06-05 04:20:06 UTC
* Number of recursive dependencies: 144

Run `revdepcheck::revdep_details(, "MIC")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
          ▆
       1. └─MIC::download_patric_db(tmp_path_db) at test-patric.R:34:3
       2.   └─utils::download.file(ftp_path, save_path, mode = "wb")
      ── Warning ('test-patric.R:42:3'): check can download genomes ──────────────────
      cannot open URL 'ftp://ftp.bvbrc.org/RELEASE_NOTES/PATRIC_genomes_AMR.txt': FTP status was '400 Unknown Error'
      Backtrace:
    ...
       2. │ └─MIC::load_patric_db(database)
       3. │   └─readr::read_delim(x, delim = "\t", col_types = readr::cols(.default = "c"))
       4. │     └─vroom::vroom(...)
       5. │       └─vroom:::vroom_(...)
       6. ├─base (local) `<fn>`(`<url>`, "rb")
       7. └─base::open.connection(`<url>`, "rb")
      
      [ FAIL 3 | WARN 3 | SKIP 0 | PASS 218 ]
      Error: Test failures
      Execution halted
    ```

# mikropml

<details>

* Version: 1.6.2
* GitHub: https://github.com/SchlossLab/mikropml
* Source code: https://github.com/cran/mikropml
* Date/Publication: 2025-08-22 19:40:02 UTC
* Number of recursive dependencies: 151

Run `revdepcheck::revdep_details(, "mikropml")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
      ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
      • On Linux (1): 'test-run_ml.R:116:3'
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-feature_importance.R:145:3'): feature importances are correct when tibbles used ──
    ...
          6   0.5968421      0.050526316 0.08910891 0.5236842 0.6710526
          7   0.6402895      0.007078947 0.20792079 0.6236842 0.6526316
      and 4 more ...
      
      * Run `testthat::snapshot_accept('feature_importance')` to accept the change.
      * Run `testthat::snapshot_review('feature_importance')` to interactively review the change.
      
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 337 ]
      Error: Test failures
      Execution halted
    ```

# MineICA

<details>

* Version: 1.48.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2025-04-15
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "MineICA")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Namespace in Imports field not imported from: ‘lumiHumanAll.db’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘GOstats’ ‘Hmisc’ ‘JADE’ ‘RColorBrewer’ ‘Rgraphviz’ ‘annotate’
      ‘biomaRt’ ‘cluster’ ‘colorspace’ ‘fastICA’ ‘foreach’ ‘ggplot2’
      ‘graph’ ‘gtools’ ‘igraph’ ‘marray’ ‘mclust’ ‘methods’ ‘plyr’ ‘scales’
      ‘xtable’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Missing or unexported object: ‘GOstats::geneIdsByCategory’
    ':::' calls which should be '::':
      ‘Biobase:::annotation<-’ ‘Biobase:::validMsg’ ‘fpc:::pamk’
      ‘lumi:::getChipInfo’ ‘mclust:::adjustedRandIndex’
      See the note in ?`:::` about the use of this operator.
    Unexported object imported by a ':::' call: ‘Biobase:::isValidVersion’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link(s) in Rd file 'Alist.Rd':
      ‘class-IcaSet’
    
    Missing link(s) in Rd file 'Slist.Rd':
      ‘class-IcaSet’
    
    Missing link(s) in Rd file 'class-IcaSet.Rd':
      ‘class-IcaSet’
    
    Missing link(s) in Rd file 'getComp.Rd':
      ‘class-IcaSet’
    
    Missing link(s) in Rd file 'runAn.Rd':
      ‘[Category:class-GOHyperGParams]{GOHyperGParams}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 classes:
      ‘MineICAParams’
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MineICA.Rnw’ using Sweave
    Loading required package: BiocGenerics
    Loading required package: generics
    
    Attaching package: ‘generics’
    
    The following objects are masked from ‘package:base’:
    
        as.difftime, as.factor, as.ordered, intersect, is.element, setdiff,
    ...
    l.23 \usepackage
                    {subfig}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘MineICA.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MineICA.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘biomaRt’ ‘GOstats’ ‘cluster’ ‘mclust’ ‘igraph’
    A package should be listed in only one of these fields.
    ```

*   checking R code for possible problems ... NOTE
    ```
    addGenesToGoReport: no visible global function definition for
      ‘conditional’
    addGenesToGoReport: no visible global function definition for
      ‘sigCategories’
    annot2Color: no visible global function definition for ‘brewer.pal’
    annot2Color: no visible global function definition for ‘heat_hcl’
    annot2Color: no visible global function definition for ‘terrain_hcl’
    annot2Color: no visible global function definition for ‘cm.colors’
    annot2Color: no visible global function definition for ‘rainbow_hcl’
    annotFeatures: no visible global function definition for ‘na.omit’
    ...
      importFrom("methods", "callNextMethod", "new", "validObject")
      importFrom("stats", "aggregate", "as.dendrogram", "as.dist",
                 "as.hclust", "chisq.test", "cor", "cor.test", "cutree",
                 "dist", "hclust", "kmeans", "kruskal.test", "lm", "median",
                 "na.omit", "order.dendrogram", "p.adjust", "quantile",
                 "reorder", "shapiro.test", "wilcox.test")
      importFrom("utils", "capture.output", "combn", "read.table",
                 "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) clusterFastICARuns.Rd:47: Lost braces
        47 |   \item{...}{Additional parameters for code{funClus}}
           |                                            ^
    checkRd: (-1) clusterFastICARuns.Rd:52: Lost braces
        52 |   item{W}{the estimated unmixing matrix}, \item{Iq}{Iq
           |       ^
    checkRd: (-1) clusterFastICARuns.Rd:52: Lost braces
        52 |   item{W}{the estimated unmixing matrix}, \item{Iq}{Iq
           |          ^
    checkRd: (-1) plotDensOneAnnotInAllComp.Rd:104: Lost braces
    ...
           |                                 ^
    checkRd: (-1) runICA.Rd:44: Lost braces
        44 |   item{W}{the estimated unmixing matrix}}
           |       ^
    checkRd: (-1) runICA.Rd:44: Lost braces
        44 |   item{W}{the estimated unmixing matrix}}
           |          ^
    checkRd: (-1) writeProjByComp.Rd:38: Lost braces
        38 | their annotations, please remember to modify code{genesPath(params)}, or
           |                                                  ^
    ```

# nhdplusTools

<details>

* Version: 1.3.2
* GitHub: https://github.com/doi-usgs/nhdplusTools
* Source code: https://github.com/cran/nhdplusTools
* Date/Publication: 2025-06-10 13:00:14 UTC
* Number of recursive dependencies: 134

Run `revdepcheck::revdep_details(, "nhdplusTools")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > 
      > test_check("nhdplusTools")
      Loading required package: nhdplusTools
      Starting 2 test processes
      [ FAIL 5 | WARN 0 | SKIP 3 | PASS 641 ]
    ...
      Error in `round(rescale$areasqkm_sum, 0)`: non-numeric argument to mathematical function
      Backtrace:
          ▆
       1. └─testthat::expect_equal(...) at test_rescale_catchments.R:54:3
       2.   └─testthat::quasi_label(enquo(object), label, arg = "object")
       3.     └─rlang::eval_bare(expr, quo_get_env(quo))
      
      [ FAIL 5 | WARN 0 | SKIP 3 | PASS 641 ]
      Error: Test failures
      Execution halted
    ```

# nixtlar

<details>

* Version: 0.6.2
* GitHub: https://github.com/Nixtla/nixtlar
* Source code: https://github.com/cran/nixtlar
* Date/Publication: 2024-10-28 23:10:02 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::revdep_details(, "nixtlar")` for more info

</details>

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

# outliers.ts.oga

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/outliers.ts.oga
* Date/Publication: 2025-09-03 14:50:02 UTC
* Number of recursive dependencies: 155

Run `revdepcheck::revdep_details(, "outliers.ts.oga")` for more info

</details>

## In both

*   checking whether package ‘outliers.ts.oga’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdep/future.apply/checks/outliers.ts.oga/new/outliers.ts.oga.Rcheck/00install.out’ for details.
    ```

# PAMpal

<details>

* Version: 1.4.4
* GitHub: NA
* Source code: https://github.com/cran/PAMpal
* Date/Publication: 2025-03-04 00:20:02 UTC
* Number of recursive dependencies: 119

Run `revdepcheck::revdep_details(, "PAMpal")` for more info

</details>

## In both

*   checking whether package ‘PAMpal’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdep/future.apply/checks/PAMpal/new/PAMpal.Rcheck/00install.out’ for details.
    ```

# PAMscapes

<details>

* Version: 0.14.5
* GitHub: NA
* Source code: https://github.com/cran/PAMscapes
* Date/Publication: 2025-08-31 15:00:02 UTC
* Number of recursive dependencies: 127

Run `revdepcheck::revdep_details(, "PAMscapes")` for more info

</details>

## In both

*   checking whether package ‘PAMscapes’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdep/future.apply/checks/PAMscapes/new/PAMscapes.Rcheck/00install.out’ for details.
    ```

# pavo

<details>

* Version: 2.9.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2023-09-24 10:10:02 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdep/future.apply/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

# pgxRpi

<details>

* Version: 1.4.4
* GitHub: https://github.com/progenetix/pgxRpi
* Source code: https://github.com/cran/pgxRpi
* Date/Publication: 2025-08-20
* Number of recursive dependencies: 157

Run `revdepcheck::revdep_details(, "pgxRpi")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    pgxSegprocess: no visible binding for global variable
      ‘followup_state_id’
    Undefined global functions or variables:
      followup_state_id
    ```

# powRICLPM

<details>

* Version: 0.2.1
* GitHub: https://github.com/JeroenDMulder/powRICLPM
* Source code: https://github.com/cran/powRICLPM
* Date/Publication: 2024-10-26 13:50:03 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::revdep_details(, "powRICLPM")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘save.R’
    ```

# qape

<details>

* Version: 2.1
* GitHub: NA
* Source code: https://github.com/cran/qape
* Date/Publication: 2023-08-21 14:10:12 UTC
* Number of recursive dependencies: 41

Run `revdepcheck::revdep_details(, "qape")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) srswrRe.Rd:10: Lost braces
        10 |   \item{listRanef}{{\emph{ranef(model)}} object where {\emph{model}} is an { \emph{lmer}} object.}
           |                                                                            ^
    ```

# QDNAseq

<details>

* Version: 1.44.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2025-04-15
* Number of recursive dependencies: 94

Run `revdepcheck::revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    ...
    l.197 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘QDNAseq.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# rBiasCorrection

<details>

* Version: 0.3.5
* GitHub: https://github.com/kapsner/rBiasCorrection
* Source code: https://github.com/cran/rBiasCorrection
* Date/Publication: 2025-04-05 13:50:02 UTC
* Number of recursive dependencies: 121

Run `revdepcheck::revdep_details(, "rBiasCorrection")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      `label` cannot be a <ggplot2::element_blank> object.
      Backtrace:
           ▆
        1. └─rBiasCorrection::create_exampleplot(...) at test-plotting.R:238:5
        2.   └─ggplot2::ggsave(...)
        3.     └─base::lapply(plot, grid.draw)
    ...
      and 3 more ...
      
      * Run `testthat::snapshot_accept('algorithm_minmax_FALSE')` to accept the change.
      * Run `testthat::snapshot_review('algorithm_minmax_FALSE')` to interactively review the change.
      
      [ FAIL 1 | WARN 334 | SKIP 1 | PASS 102 ]
      Error: Test failures
      Execution halted
      Error in deferred_run(env) : could not find function "deferred_run"
      Calls: <Anonymous>
    ```

# receptiviti

<details>

* Version: 0.2.0
* GitHub: https://github.com/Receptiviti/receptiviti-r
* Source code: https://github.com/cran/receptiviti
* Date/Publication: 2025-06-07 15:10:02 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::revdep_details(, "receptiviti")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(receptiviti)
      > 
      > test_check("receptiviti")
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 5 ]
      
    ...
       3. │   └─testthat:::quasi_capture(...)
       4. │     ├─testthat (local) .capture(...)
       5. │     │ └─base::withCallingHandlers(...)
       6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       7. └─receptiviti::receptiviti(...)
       8.   └─receptiviti:::manage_request(...)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

# rsi

<details>

* Version: 0.3.2
* GitHub: https://github.com/Permian-Global-Research/rsi
* Source code: https://github.com/cran/rsi
* Date/Publication: 2025-01-22 03:20:02 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::revdep_details(, "rsi")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘calculate_indices.Rd’ ‘get_stac_data.R’ ‘get_stac_data.Rd’
        ‘landsat_mask_function.Rd’
    ```

# sdmTMB

<details>

* Version: 0.7.4
* GitHub: https://github.com/pbs-assess/sdmTMB
* Source code: https://github.com/cran/sdmTMB
* Date/Publication: 2025-07-29 19:30:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::revdep_details(, "sdmTMB")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > options(Matrix.warnDeprecatedCoerce = 2)
      > 
      > library(testthat)
      > library(sdmTMB)
      > 
      > test_check("sdmTMB")
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-nonstationary.R:277:3'): Test that non-stationary model works without spatial field and random effects in epsilon ──
      as.numeric(par) not equal to -14.
      1/1 mismatches
      [1] -14.3 - -14 == -0.285
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 1167 ]
      Error: Test failures
      Execution halted
    ```

# signeR

<details>

* Version: 2.10.0
* GitHub: https://github.com/TojalLab/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2025-04-15
* Number of recursive dependencies: 236

Run `revdepcheck::revdep_details(, "signeR")` for more info

</details>

## In both

*   checking whether package ‘signeR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: replacing previous import ‘e1071::element’ by ‘ggplot2::element’ when loading ‘signeR’
    See ‘/scratch/henrik/revdep/future.apply/checks/signeR/new/signeR.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking R code for possible problems ... NOTE
    ```
    covariate: no visible binding for global variable ‘.’
    explorepage: no visible binding for global variable ‘.’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Variant_Type’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Reference_Allele’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Tumor_Seq_Allele2’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Tumor_Seq_Allele1’
    ...
    ExposureCorrelation,SignExp-numeric: no visible binding for global
      variable ‘exposure’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘Feature’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘exposure’
    Undefined global functions or variables:
      . Col Feature Frequency Reference_Allele Row Samples Signatures
      Tumor_Seq_Allele1 Tumor_Seq_Allele2 Variant_Type alt<- exposure fc
      project sig sig_test
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

# solitude

<details>

* Version: 1.1.3
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2021-07-29 20:00:02 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::revdep_details(, "solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘lgr’
      All declared Imports should be used.
    ```

# SPARSEMODr

<details>

* Version: 1.2.0
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2022-07-19 20:50:02 UTC
* Number of recursive dependencies: 120

Run `revdepcheck::revdep_details(, "SPARSEMODr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘geosphere’ ‘lubridate’ ‘tidyverse’ ‘viridis’
      All declared Imports should be used.
    ```

# sperrorest

<details>

* Version: 3.0.5
* GitHub: https://github.com/giscience-fsu/sperrorest
* Source code: https://github.com/cran/sperrorest
* Date/Publication: 2022-10-16 12:50:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::revdep_details(, "sperrorest")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) partition_cv.Rd:36: Lost braces; missing escapes or markup?
        36 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
           |                                          ^
    checkRd: (-1) partition_cv_strat.Rd:28: Lost braces; missing escapes or markup?
        28 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
           |                                          ^
    checkRd: (-1) partition_factor.Rd:28: Lost braces; missing escapes or markup?
        28 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
           |                                          ^
    checkRd: (-1) partition_factor_cv.Rd:43: Lost braces; missing escapes or markup?
    ...
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

# squat

<details>

* Version: 0.4.0
* GitHub: https://github.com/LMJL-Alea/squat
* Source code: https://github.com/cran/squat
* Date/Publication: 2025-05-20 08:30:02 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::revdep_details(, "squat")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
    ...
      * Run `testthat::snapshot_review('qts-prcomp/')` to review changes
      Backtrace:
          ▆
       1. └─vdiffr::expect_doppelganger(...) at test-qts-prcomp.R:25:3
       2.   ├─base::withCallingHandlers(...)
       3.   └─testthat::expect_snapshot_file(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 79 ]
      Error: Test failures
      Execution halted
    ```

# stars

<details>

* Version: 0.6-8
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2025-02-01 18:50:02 UTC
* Number of recursive dependencies: 162

Run `revdepcheck::revdep_details(, "stars")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘aggregate.R’
      Comparing ‘aggregate.Rout’ to ‘aggregate.Rout.save’ ... OK
      Running ‘align.R’
      Comparing ‘align.Rout’ to ‘align.Rout.save’ ... OK
      Running ‘area.R’
      Comparing ‘area.Rout’ to ‘area.Rout.save’ ... OK
      Running ‘crop.R’
      Comparing ‘crop.Rout’ to ‘crop.Rout.save’ ... OK
      Running ‘curvilinear.R’
      Comparing ‘curvilinear.Rout’ to ‘curvilinear.Rout.save’ ... OK
    ...
      > 
      > s = st_set_dimensions(s, st_dimensions(s), xy = NULL) 
      > sfc = st_sfc(st_point(0:1), st_point(3:2))
      > s = st_set_dimensions(s, 1, sfc) |> st_set_crs(4326)
      > tm = as.POSIXct("2023-03-04 12:35") + c(0, 3600)
      > s = st_set_dimensions(s, 2, tm)
      > f = tempfile(fileext = ".nc")
      > write_mdim(s, f, as_float = FALSE)
      Error: requires GDAL >= 3.1.0 and 64-bit
      Execution halted
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.2.0 because package code uses the pipe
      placeholder syntax added in R 4.2.0.
      File(s) using such syntax:
        ‘prcomp.Rd’
    ```

# stppSim

<details>

* Version: 1.3.4
* GitHub: https://github.com/Manalytics/stppSim
* Source code: https://github.com/cran/stppSim
* Date/Publication: 2024-07-24 13:30:02 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::revdep_details(, "stppSim")` for more info

</details>

## In both

*   checking whether package ‘stppSim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdep/future.apply/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
    ```

# targeted

<details>

* Version: 0.5
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2024-02-22 10:00:21 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::revdep_details(, "targeted")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘alean.Rd’ ‘nondom.Rd’
    ```

# tramvs

<details>

* Version: 0.0-7
* GitHub: NA
* Source code: https://github.com/cran/tramvs
* Date/Publication: 2025-01-31 10:10:02 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::revdep_details(, "tramvs")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘tramvs.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'tramvs.Rnw' failed with diagnostics:
    unable to run pdflatex on 'tramvs.tex'
    LaTeX errors:
    ! LaTeX Error: File `wrapfig.sty' not found.
    
    ...
    l.68 \usepackage
                    {float}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘tramvs.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘tramvs.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tsdistributions

<details>

* Version: 1.0.3
* GitHub: https://github.com/tsmodels/tsdistributions
* Source code: https://github.com/cran/tsdistributions
* Date/Publication: 2025-04-17 09:50:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::revdep_details(, "tsdistributions")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘estimation_demo.Rmd’ using rmarkdown
    --- finished re-building ‘estimation_demo.Rmd’
    
    --- re-building ‘location_scale_distributions.Rmd’ using rmarkdown
    ! Undefined control sequence.
    l.56 \NewDocumentCommand
                            \citeproctext{}{} 
    
    ...
    --- finished re-building ‘profile_demo.Rmd’
    
    --- re-building ‘spd_demo.Rmd’ using rmarkdown
    --- finished re-building ‘spd_demo.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘location_scale_distributions.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tsgarch

<details>

* Version: 1.0.3
* GitHub: https://github.com/tsmodels/tsgarch
* Source code: https://github.com/cran/tsgarch
* Date/Publication: 2024-10-12 00:50:02 UTC
* Number of recursive dependencies: 94

Run `revdepcheck::revdep_details(, "tsgarch")` for more info

</details>

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.1.0 because package code uses the pipe
      |> or function shorthand \(...) syntax added in R 4.1.0.
      File(s) using such syntax:
        ‘benchmark.R’ ‘print.R’
    ```

# tsmarch

<details>

* Version: 1.0.0
* GitHub: https://github.com/tsmodels/tsmarch
* Source code: https://github.com/cran/tsmarch
* Date/Publication: 2024-11-18 13:30:02 UTC
* Number of recursive dependencies: 148

Run `revdepcheck::revdep_details(, "tsmarch")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘feasible_multivariate_garch.Rmd’ using rmarkdown
    ! Undefined control sequence.
    l.97 \NewDocumentCommand
                            \citeproctext{}{} 
    
    Error: processing vignette 'feasible_multivariate_garch.Rmd' failed with diagnostics:
    LaTeX failed to compile /scratch/henrik/revdep/future.apply/checks/tsmarch/new/tsmarch.Rcheck/vign_test/tsmarch/vignettes/feasible_multivariate_garch.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See feasible_multivariate_garch.log for more info.
    --- failed re-building ‘feasible_multivariate_garch.Rmd’
    
    --- re-building ‘tsmarch_demo.Rmd’ using rmarkdown
    --- finished re-building ‘tsmarch_demo.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘feasible_multivariate_garch.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# txshift

<details>

* Version: 0.3.8
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2022-02-09 22:30:02 UTC
* Number of recursive dependencies: 101

Run `revdepcheck::revdep_details(, "txshift")` for more info

</details>

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

# XNAString

<details>

* Version: 1.15.0
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "XNAString")` for more info

</details>

## In both

*   checking whether package ‘XNAString’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/scratch/henrik/revdep/future.apply/checks/XNAString/new/XNAString.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘XNAString’ ...
** this is package ‘XNAString’ version ‘1.15.0’
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.2.1 20231205 (Red Hat 13.2.1-6)’
using C++11
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/cpu.c -o ViennaRNA/utils/cpu.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/msa_utils.c -o ViennaRNA/utils/msa_utils.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/structure_tree.c -o ViennaRNA/utils/structure_tree.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/higher_order_functions.c -o ViennaRNA/utils/higher_order_functions.o
...
      |      ^~~~~~~~
ViennaRNA/datastructures/lists.c:284:1: error: conflicting types for ‘lst_mergesort’; have ‘void(LIST *, int (*)(void *, void *))’
  284 | lst_mergesort (LIST * l, int (*cmp_func) (void *, void *))
      | ^~~~~~~~~~~~~
../src/ViennaRNA/datastructures/lists.h:63:6: note: previous declaration of ‘lst_mergesort’ with type ‘void(LIST *, int (*)(void))’
   63 | void lst_mergesort (LIST * l, int (*cmp_func) ());
      |      ^~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/etc/Makeconf:202: ViennaRNA/datastructures/lists.o] Error 1
ERROR: compilation failed for package ‘XNAString’
* removing ‘/scratch/henrik/revdep/future.apply/checks/XNAString/new/XNAString.Rcheck/XNAString’


```
### CRAN

```
* installing *source* package ‘XNAString’ ...
** this is package ‘XNAString’ version ‘1.15.0’
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.2.1 20231205 (Red Hat 13.2.1-6)’
using C++11
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/cpu.c -o ViennaRNA/utils/cpu.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/msa_utils.c -o ViennaRNA/utils/msa_utils.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/structure_tree.c -o ViennaRNA/utils/structure_tree.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/higher_order_functions.c -o ViennaRNA/utils/higher_order_functions.o
...
      |      ^~~~~~~~
ViennaRNA/datastructures/lists.c:284:1: error: conflicting types for ‘lst_mergesort’; have ‘void(LIST *, int (*)(void *, void *))’
  284 | lst_mergesort (LIST * l, int (*cmp_func) (void *, void *))
      | ^~~~~~~~~~~~~
../src/ViennaRNA/datastructures/lists.h:63:6: note: previous declaration of ‘lst_mergesort’ with type ‘void(LIST *, int (*)(void))’
   63 | void lst_mergesort (LIST * l, int (*cmp_func) ());
      |      ^~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/etc/Makeconf:202: ViennaRNA/datastructures/lists.o] Error 1
ERROR: compilation failed for package ‘XNAString’
* removing ‘/scratch/henrik/revdep/future.apply/checks/XNAString/old/XNAString.Rcheck/XNAString’


```
