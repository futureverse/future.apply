# adestr

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/adestr
* Date/Publication: 2024-07-12 13:50:09 UTC
* Number of recursive dependencies: 135

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

# ClustIRR

<details>

* Version: 1.8.0
* GitHub: https://github.com/snaketron/ClustIRR
* Source code: https://github.com/cran/ClustIRR
* Date/Publication: 2025-10-29
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

# cSEM

<details>

* Version: 0.6.1
* GitHub: https://github.com/FloSchuberth/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2025-05-16 09:40:14 UTC
* Number of recursive dependencies: 144

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
* Number of recursive dependencies: 166

Run `revdepcheck::revdep_details(, "ctsem")` for more info

</details>

## In both

*   checking whether package ‘ctsem’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: namespace ‘colorspace’ is not available and has been replaced
    See ‘/scratch/henrik/revdep/future.apply/checks/ctsem/new/ctsem.Rcheck/00install.out’ for details.
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘hierarchicalmanual.rnw’ using knitr_notangle
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'hierarchicalmanual.rnw' failed with diagnostics:
    unable to run pdflatex on 'hierarchicalmanual.tex'
    LaTeX errors:
    ! LaTeX Error: File `apacite.sty' not found.
    
    ...
    l.62 \bibliographystyle
                           {apacite}     % Set bibliography style^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘hierarchicalmanual.rnw’
    
    SUMMARY: processing the following file failed:
      ‘hierarchicalmanual.rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# disk.frame

<details>

* Version: 0.8.3
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-08-24 16:20:10 UTC
* Number of recursive dependencies: 94

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

# fdacluster

<details>

* Version: 0.4.1
* GitHub: https://github.com/astamm/fdacluster
* Source code: https://github.com/cran/fdacluster
* Date/Publication: 2025-01-14 16:50:09 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::revdep_details(, "fdacluster")` for more info

</details>

## In both

*   checking whether package ‘fdacluster’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      baseDissimilarityClass.cpp:39:28: warning: ‘bool arma::is_finite(eT, const typename arma_scalar_only<eT>::result*) [with eT = double; typename arma_scalar_only<eT>::result = double]’ is deprecated: change arma::is_finite(val) to std::isfinite(val) [-Wdeprecated-declarations]
      baseDissimilarityClass.cpp:39:57: warning: ‘bool arma::is_finite(const Base<typename T1::elem_type, T1>&) [with T1 = subview<double>; typename T1::elem_type = double]’ is deprecated: change arma::is_finite(X) to X.is_finite() [-Wdeprecated-declarations]
      baseDissimilarityClass.cpp:53:28: warning: ‘bool arma::is_finite(eT, const typename arma_scalar_only<eT>::result*) [with eT = double; typename arma_scalar_only<eT>::result = double]’ is deprecated: change arma::is_finite(val) to std::isfinite(val) [-Wdeprecated-declarations]
      baseDissimilarityClass.cpp:53:57: warning: ‘bool arma::is_finite(const Base<typename T1::elem_type, T1>&) [with T1 = subview<double>; typename T1::elem_type = double]’ is deprecated: change arma::is_finite(X) to X.is_finite() [-Wdeprecated-declarations]
      lowessCenterClass.cpp:41:28: warning: ‘bool arma::is_finite(eT, const typename arma_scalar_only<eT>::result*) [with eT = double; typename arma_scalar_only<eT>::result = double]’ is deprecated: change arma::is_finite(val) to std::isfinite(val) [-Wdeprecated-declarations]
      lowessCenterClass.cpp:41:64: warning: ‘bool arma::is_finite(eT, const typename arma_scalar_only<eT>::result*) [with eT = double; typename arma_scalar_only<eT>::result = double]’ is deprecated: change arma::is_finite(val) to std::isfinite(val) [-Wdeprecated-declarations]
      polyCenterClass.cpp:39:28: warning: ‘bool arma::is_finite(eT, const typename arma_scalar_only<eT>::result*) [with eT = double; typename arma_scalar_only<eT>::result = double]’ is deprecated: change arma::is_finite(val) to std::isfinite(val) [-Wdeprecated-declarations]
      polyCenterClass.cpp:39:64: warning: ‘bool arma::is_finite(eT, const typename arma_scalar_only<eT>::result*) [with eT = double; typename arma_scalar_only<eT>::result = double]’ is deprecated: change arma::is_finite(val) to std::isfinite(val) [-Wdeprecated-declarations]
    See ‘/scratch/henrik/revdep/future.apply/checks/fdacluster/new/fdacluster.Rcheck/00install.out’ for details.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
      Missing dependency on R >= 4.2.0 because package code uses the pipe
      placeholder syntax added in R 4.2.0.
      File(s) using such syntax:
        ‘caps-plot.R’ ‘utils.R’
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘combine_forecasts.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
    --- finished re-building ‘combine_forecasts.Rmd’
    
    --- re-building ‘custom_functions.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
    --- finished re-building ‘custom_functions.Rmd’
    
    --- re-building ‘grouped_forecast.Rmd’ using rmarkdown
    ...
    
    --- re-building ‘package_overview.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
    --- finished re-building ‘package_overview.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘grouped_forecast.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# FracFixR

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/FracFixR
* Date/Publication: 2025-10-21 17:40:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::revdep_details(, "FracFixR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘FracFixR-intro.Rmd’ using rmarkdown
    
    Quitting from FracFixR-intro.Rmd:92-98 [run_fracfixr]
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    <error/rlang_error>
    Error in `checkNumberOfLocalWorkers()`:
    ! Attempting to set up 255 localhost parallel workers with only 5 CPU cores available for this R process (per 'N/A'), which could result in a 5100% load. The hard limit is set to 300%. Overusing the CPUs has negative impact on the current R process, but also on all other processes of yours and others running on the same machine. See help("parallelly.maxWorkers.localhost", package = "parallelly") for further explanations and how to override the hard limit that triggered this error
    ---
    Backtrace:
    ...
    
    Error: processing vignette 'FracFixR-intro.Rmd' failed with diagnostics:
    Attempting to set up 255 localhost parallel workers with only 5 CPU cores available for this R process (per 'N/A'), which could result in a 5100% load. The hard limit is set to 300%. Overusing the CPUs has negative impact on the current R process, but also on all other processes of yours and others running on the same machine. See help("parallelly.maxWorkers.localhost", package = "parallelly") for further explanations and how to override the hard limit that triggered this error
    --- failed re-building ‘FracFixR-intro.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘FracFixR-intro.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# hero

<details>

* Version: 0.6
* GitHub: NA
* Source code: https://github.com/cran/hero
* Date/Publication: 2023-07-15 21:10:09 UTC
* Number of recursive dependencies: 159

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

# InPAS

<details>

* Version: 2.18.1
* GitHub: NA
* Source code: https://github.com/cran/InPAS
* Date/Publication: 2025-11-25
* Number of recursive dependencies: 164

Run `revdepcheck::revdep_details(, "InPAS")` for more info

</details>

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

# ivmte

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/ivmte
* Date/Publication: 2021-09-17 12:20:07 UTC
* Number of recursive dependencies: 127

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

# MAI

<details>

* Version: 1.16.0
* GitHub: https://github.com/KechrisLab/MAI
* Source code: https://github.com/cran/MAI
* Date/Publication: 2025-10-29
* Number of recursive dependencies: 175

Run `revdepcheck::revdep_details(, "MAI")` for more info

</details>

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# mikropml

<details>

* Version: 1.7.0
* GitHub: https://github.com/SchlossLab/mikropml
* Source code: https://github.com/cran/mikropml
* Date/Publication: 2025-10-29 03:30:02 UTC
* Number of recursive dependencies: 180

Run `revdepcheck::revdep_details(, "mikropml")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# MineICA

<details>

* Version: 1.49.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2025-10-07
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "MineICA")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘MineICA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: plotCorGraph
    > ### Title: Plots graph using
    > ### Aliases: plotCorGraph
    > 
    > ### ** Examples
    > 
    > dat1 <- data.frame(matrix(rnorm(10000),ncol=10,nrow=1000))
    ...
     1. └─MineICA::plotCorGraph(...)
     2.   └─igraph::layout.fruchterman.reingold(...)
     3.     ├─igraph:::do_call(layout_with_fr, .args = c(list(...), params))
     4.     │ └─base::eval(call, .env)
     5.     │   └─base::eval(call, .env)
     6.     └─igraph::layout_with_fr(...)
     7.       └─lifecycle::deprecate_stop("0.8.0", "layout_with_fr(area = )")
     8.         └─lifecycle:::deprecate_stop0(msg)
     9.           └─rlang::cnd_signal(...)
    Execution halted
    ```

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
* Number of recursive dependencies: 120

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
* Number of recursive dependencies: 128

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

* Version: 1.6.0
* GitHub: https://github.com/progenetix/pgxRpi
* Source code: https://github.com/cran/pgxRpi
* Date/Publication: 2025-10-29
* Number of recursive dependencies: 166

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
* Number of recursive dependencies: 65

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

* Version: 1.46.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2025-10-29
* Number of recursive dependencies: 95

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
      Saving _problems/test-receptiviti-18.R
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 5 ]
    ...
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

# recforest

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/recforest
* Date/Publication: 2024-12-05 18:30:02 UTC
* Number of recursive dependencies: 124

Run `revdepcheck::revdep_details(, "recforest")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       3. └─testthat::expect_equal(...) at test-train_forest.R:285:5
      ── Failure ('test-train_forest.R:301:5'): train_forest and predict_forest works with method GL ──
      Expected `trained_forest$tree_metrics` to equal `list(...)`.
      Differences:
        `actual[[1]]$c_index`: 0.794279
      `expected[[1]]$c_index`: 0.794180
    ...
      Backtrace:
          ▆
       1. ├─withr::with_seed(...) at test-train_forest.R:251:3
       2. │ └─withr::with_preserve_seed(...)
       3. └─testthat::expect_equal(...) at test-train_forest.R:323:5
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 61 ]
      Error:
      ! Test failures.
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

# signeR

<details>

* Version: 2.12.0
* GitHub: https://github.com/TojalLab/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2025-10-29
* Number of recursive dependencies: 243

Run `revdepcheck::revdep_details(, "signeR")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++14: please drop specification unless essential
    ```

*   checking R code for possible problems ... NOTE
    ```
    covariate: no visible binding for global variable ‘.’
    cox_as_data_frame2: no visible binding for global variable ‘term’
    cox_as_data_frame2: no visible binding for global variable ‘estimate’
    cox_as_data_frame2: no visible binding for global variable ‘conf.low’
    cox_as_data_frame2: no visible binding for global variable ‘conf.high’
    cox_as_data_frame2: no visible binding for global variable ‘p.value’
    explorepage: no visible binding for global variable ‘.’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Variant_Type’
    genCountMatrixFromMAF: no visible binding for global variable
    ...
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

* Version: 0.6
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2025-10-30 07:50:09 UTC
* Number of recursive dependencies: 159

Run `revdepcheck::revdep_details(, "targeted")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘targeted-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: learner_xgboost
    > ### Title: Construct a learner
    > ### Aliases: learner_xgboost
    > 
    > ### ** Examples
    > 
    > n  <- 1e3
    ...
    Warning in throw_err_or_depr_msg("Parameter '", match_old, "' has been renamed to '",  :
      Parameter 'data' has been renamed to 'x'. This warning will become an error in a future version.
    Warning in throw_err_or_depr_msg("Parameter '", match_old, "' has been renamed to '",  :
      Parameter 'eta' has been renamed to 'learning_rate'. This warning will become an error in a future version.
    Warning in throw_err_or_depr_msg("Parameter '", match_old, "' has been renamed to '",  :
      Parameter 'lambda' has been renamed to 'reg_lambda'. This warning will become an error in a future version.
    Error in (function (x, y, objective = NULL, nrounds = 100L, max_depth = NULL,  : 
      argument "y" is missing, with no default
    Calls: <Anonymous> ... <Anonymous> -> process.y.margin.and.objective -> NROW
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘tinytest.R’
     ERROR
    Running the tests in ‘tests/tinytest.R’ failed.
    Last 50 lines of output:
      test_learner_stratify.R.......    0 tests    
      test_learner_stratify.R.......    0 tests    
      test_learner_stratify.R.......    0 tests    
      test_learner_stratify.R.......    3 tests [0;32mOK[0m 
      test_learner_stratify.R.......    3 tests [0;32mOK[0m 
      test_learner_stratify.R.......    5 tests [0;32mOK[0m [0;36m44ms[0m
    ...
      In addition: Warning messages:
      1: In throw_err_or_depr_msg("Passed unrecognized parameters: ", paste(head(names_unrecognized),  :
        Passed unrecognized parameters: verbose. This warning will become an error in a future version.
      2: In throw_err_or_depr_msg("Parameter '", match_old, "' has been renamed to '",  :
        Parameter 'data' has been renamed to 'x'. This warning will become an error in a future version.
      3: In throw_err_or_depr_msg("Parameter '", match_old, "' has been renamed to '",  :
        Parameter 'eta' has been renamed to 'learning_rate'. This warning will become an error in a future version.
      4: In throw_err_or_depr_msg("Parameter '", match_old, "' has been renamed to '",  :
        Parameter 'lambda' has been renamed to 'reg_lambda'. This warning will become an error in a future version.
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘predictionclass.Rmd’ using rmarkdown
    
    Quitting from predictionclass.Rmd:143-145 [unnamed-chunk-5]
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    <error/rlang_error>
    Error:
    ! argument "y" is missing, with no default
    ---
    Backtrace:
    ...
    --- failed re-building ‘predictionclass.Rmd’
    
    --- re-building ‘riskregression.Rmd’ using rmarkdown
    --- finished re-building ‘riskregression.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘predictionclass.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tramvs

<details>

* Version: 0.0-8
* GitHub: NA
* Source code: https://github.com/cran/tramvs
* Date/Publication: 2025-11-18 18:00:02 UTC
* Number of recursive dependencies: 106

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
    --- re-building ‘estimation_demo.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
    --- finished re-building ‘estimation_demo.Rmd’
    
    --- re-building ‘location_scale_distributions.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
    ! Undefined control sequence.
    l.56 \NewDocumentCommand
                            \citeproctext{}{} 
    ...
    
    --- re-building ‘spd_demo.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
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
* Number of recursive dependencies: 104

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
* Number of recursive dependencies: 159

Run `revdepcheck::revdep_details(, "tsmarch")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘feasible_multivariate_garch.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
    ! Undefined control sequence.
    l.97 \NewDocumentCommand
                            \citeproctext{}{} 
    
    Error: processing vignette 'feasible_multivariate_garch.Rmd' failed with diagnostics:
    LaTeX failed to compile /scratch/henrik/revdep/future.apply/checks/tsmarch/new/tsmarch.Rcheck/vign_test/tsmarch/vignettes/feasible_multivariate_garch.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See feasible_multivariate_garch.log for more info.
    ...
    
    --- re-building ‘tsmarch_demo.Rmd’ using rmarkdown
    [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
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
* Number of recursive dependencies: 102

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
* Number of recursive dependencies: 108

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
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++11
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/cpu.c -o ViennaRNA/utils/cpu.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/msa_utils.c -o ViennaRNA/utils/msa_utils.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/structure_tree.c -o ViennaRNA/utils/structure_tree.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/higher_order_functions.c -o ViennaRNA/utils/higher_order_functions.o
...
      |      ^~~~~~~~
ViennaRNA/datastructures/lists.c:284:1: error: conflicting types for ‘lst_mergesort’; have ‘void(LIST *, int (*)(void *, void *))’
  284 | lst_mergesort (LIST * l, int (*cmp_func) (void *, void *))
      | ^~~~~~~~~~~~~
../src/ViennaRNA/datastructures/lists.h:63:6: note: previous declaration of ‘lst_mergesort’ with type ‘void(LIST *, int (*)(void))’
   63 | void lst_mergesort (LIST * l, int (*cmp_func) ());
      |      ^~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/etc/Makeconf:202: ViennaRNA/datastructures/lists.o] Error 1
ERROR: compilation failed for package ‘XNAString’
* removing ‘/scratch/henrik/revdep/future.apply/checks/XNAString/new/XNAString.Rcheck/XNAString’


```
### CRAN

```
* installing *source* package ‘XNAString’ ...
** this is package ‘XNAString’ version ‘1.15.0’
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++11
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/cpu.c -o ViennaRNA/utils/cpu.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/msa_utils.c -o ViennaRNA/utils/msa_utils.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/structure_tree.c -o ViennaRNA/utils/structure_tree.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/higher_order_functions.c -o ViennaRNA/utils/higher_order_functions.o
...
      |      ^~~~~~~~
ViennaRNA/datastructures/lists.c:284:1: error: conflicting types for ‘lst_mergesort’; have ‘void(LIST *, int (*)(void *, void *))’
  284 | lst_mergesort (LIST * l, int (*cmp_func) (void *, void *))
      | ^~~~~~~~~~~~~
../src/ViennaRNA/datastructures/lists.h:63:6: note: previous declaration of ‘lst_mergesort’ with type ‘void(LIST *, int (*)(void))’
   63 | void lst_mergesort (LIST * l, int (*cmp_func) ());
      |      ^~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.5.2-gcc13/lib64/R/etc/Makeconf:202: ViennaRNA/datastructures/lists.o] Error 1
ERROR: compilation failed for package ‘XNAString’
* removing ‘/scratch/henrik/revdep/future.apply/checks/XNAString/old/XNAString.Rcheck/XNAString’


```
