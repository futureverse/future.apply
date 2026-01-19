# future.apply: Apply Function to Elements in Parallel using Futures

The future.apply packages provides parallel implementations of common
"apply" functions provided by base R. The parallel processing is
performed via the future ecosystem, which provides a large number of
parallel backends, e.g. on the local machine, a remote cluster, and a
high-performance compute cluster.

## Details

Currently implemented functions are:

- [`future_apply()`](https://future.apply.futureverse.org/reference/future_apply.md):
  a parallel version of [apply()](https://rdrr.io/r/base/apply.html)

- [`future_by()`](https://future.apply.futureverse.org/reference/future_by.md):
  a parallel version of [by()](https://rdrr.io/r/base/by.html)

- [`future_eapply()`](https://future.apply.futureverse.org/reference/future_lapply.md):
  a parallel version of [eapply()](https://rdrr.io/r/base/lapply.html)

- [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md):
  a parallel version of [lapply()](https://rdrr.io/r/base/lapply.html)

- [`future_mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md):
  a parallel version of [mapply()](https://rdrr.io/r/base/mapply.html)

- [`future_sapply()`](https://future.apply.futureverse.org/reference/future_lapply.md):
  a parallel version of [sapply()](https://rdrr.io/r/base/lapply.html)

- [`future_tapply()`](https://future.apply.futureverse.org/reference/future_lapply.md):
  a parallel version of [tapply()](https://rdrr.io/r/base/tapply.html)

- [`future_vapply()`](https://future.apply.futureverse.org/reference/future_lapply.md):
  a parallel version of [vapply()](https://rdrr.io/r/base/lapply.html)

- [`future_Map()`](https://future.apply.futureverse.org/reference/future_mapply.md):
  a parallel version of [Map()](https://rdrr.io/r/base/funprog.html)

- [`future_replicate()`](https://future.apply.futureverse.org/reference/future_lapply.md):
  a parallel version of
  [replicate()](https://rdrr.io/r/base/lapply.html)

- [`future_.mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md):
  a parallel version of [.mapply()](https://rdrr.io/r/base/mapply.html)

Reproducibility is part of the core design, which means that perfect,
parallel random number generation (RNG) is supported regardless of the
amount of chunking, type of load balancing, and future backend being
used.

Since these `future_*()` functions have the same arguments as the
corresponding base R function, start using them is often as simple as
renaming the function in the code. For example, after attaching the
package:

    library(future.apply)

code such as:

    x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
    y <- lapply(x, quantile, probs = 1:3/4)

can be updated to:

    y <- future_lapply(x, quantile, probs = 1:3/4)

The default settings in the future framework is to process code
*sequentially*. To run the above in parallel on the local machine (on
any operating system), use:

    plan(multisession)

first. That's it!

To go back to sequential processing, use `plan(sequential)`. If you have
access to multiple machines on your local network, use:

    plan(cluster, workers = c("n1", "n2", "n2", "n3"))

This will set up four workers, one on `n1` and `n3`, and two on `n2`. If
you have SSH access to some remote machines, use:

    plan(cluster, workers = c("m1.myserver.org", "m2.myserver.org))

See the future package and
[`future::plan()`](https://future.futureverse.org/reference/plan.html)
for more examples.

The future.batchtools package provides support for high-performance
compute (HPC) cluster schedulers such as SGE, Slurm, and TORQUE / PBS.
For example,

- `plan(batchtools_slurm)`: Process via a Slurm scheduler job queue.

- `plan(batchtools_torque)`: Process via a TORQUE / PBS scheduler job
  queue.

This builds on top of the queuing framework that the batchtools package
provides. For more details on backend configuration, please see the
future.batchtools and batchtools packages.

These are just a few examples of parallel/distributed backend for the
future ecosystem. For more alternatives, see the 'Reverse dependencies'
section on the [future CRAN package
page](https://cran.r-project.org/package=future).

## See also

Useful links:

- <https://future.apply.futureverse.org>

- <https://github.com/futureverse/future.apply>

- Report bugs at <https://github.com/futureverse/future.apply/issues>

## Author

Henrik Bengtsson, except for the implementations of
[`future_apply()`](https://future.apply.futureverse.org/reference/future_apply.md),
[`future_Map()`](https://future.apply.futureverse.org/reference/future_mapply.md),
[`future_replicate()`](https://future.apply.futureverse.org/reference/future_lapply.md),
[`future_sapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
and
[`future_tapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
which are adopted from the source code of the corresponding base R
functions, which are licensed under GPL (\>= 2) with 'The R Core Team'
as the copyright holder. Because of these dependencies, the license of
this package is GPL (\>= 2).
