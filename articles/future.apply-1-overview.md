# A Future for R: Apply Function to Elements in Parallel

## Introduction

The purpose of this package is to provide worry-free parallel
alternatives to base-R “apply” functions,
e.g. [`apply()`](https://rdrr.io/r/base/apply.html),
[`lapply()`](https://rdrr.io/r/base/lapply.html), and
[`vapply()`](https://rdrr.io/r/base/lapply.html). The goal is that one
should be able to replace any of these in the core with its futurized
equivalent and things will just work. For example, instead of doing:

``` r
library(datasets)
library(stats)
y <- lapply(mtcars, FUN = mean, trim = 0.10)
```

one can do:

``` r
library(future.apply)
plan(multisession) ## Run in parallel on local computer

library(datasets)
library(stats)
y <- future_lapply(mtcars, FUN = mean, trim = 0.10)
```

Reproducibility is part of the core design, which means that perfect,
parallel random number generation (RNG) is supported regardless of the
amount of chunking, type of load balancing, and future backend being
used. To enable parallel RNG, use argument `future.seed = TRUE`.

## Role

Where does the
**[future.apply](https://cran.r-project.org/package=future.apply)**
package fit in the software stack? You can think of it as a sibling to
**[foreach](https://cran.r-project.org/package=foreach)**,
**[furrr](https://cran.r-project.org/package=furrr)**,
**[BiocParallel](https://bioconductor.org/packages/BiocParallel/)**,
**[plyr](https://cran.r-project.org/package=plyr)**, etc. Just as
**parallel** provides `parLapply()`, **foreach** provides `foreach()`,
**BiocParallel** provides `bplapply()`, and **plyr** provides `llply()`,
**future.apply** provides
[`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md).
Below is a table summarizing this idea:

[TABLE]

Note that, except for the built-in **parallel** package, none of these
higher-level APIs implement their own parallel backends, but they rather
enhance existing ones. The **foreach** framework leverages backends such
as **[doParallel](https://cran.r-project.org/package=doParallel)**,
**[doMC](https://cran.r-project.org/package=doMC)** and
**[doFuture](https://cran.r-project.org/package=doFuture)**, and the
**future.apply** framework leverages the
**[future](https://cran.r-project.org/package=future)** ecosystem and
therefore backends such as built-in **parallel**,
**[future.callr](https://cran.r-project.org/package=future.callr)**, and
**[future.batchtools](https://cran.r-project.org/package=future.batchtools)**.

By separating
[`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
and friends from the
**[future](https://cran.r-project.org/package=future)** package, it
helps clarifying the purpose of the **future** package, which is to
define and provide the core Future API, which higher-level parallel APIs
can build on and for which any futurized parallel backends can be
plugged into.

The API and identity of the **future.apply** package will be kept close
to the `*apply()` functions in base R. In other words, it will *neither*
keep growing nor be expanded with new, more powerful apply-like
functions beyond those core ones in base R. Such extended functionality
should be part of a separate package.
