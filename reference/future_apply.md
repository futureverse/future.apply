# Apply Functions Over Array Margins via Futures

`future_apply()` implements
[`base::apply()`](https://rdrr.io/r/base/apply.html) using future with
perfect replication of results, regardless of future backend used. It
returns a vector or array or list of values obtained by applying a
function to margins of an array or matrix.

## Usage

``` r
future_apply(
  X,
  MARGIN,
  FUN,
  ...,
  simplify = TRUE,
  future.envir = parent.frame(),
  future.stdout = TRUE,
  future.conditions = "condition",
  future.globals = TRUE,
  future.packages = NULL,
  future.seed = FALSE,
  future.scheduling = 1,
  future.chunk.size = NULL,
  future.label = "future_apply-%d"
)
```

## Arguments

- X:

  an array, including a matrix.

- MARGIN:

  A vector giving the subscripts which the function will be applied
  over. For example, for a matrix `1` indicates rows, `2` indicates
  columns, `c(1, 2)` indicates rows and columns. Where `X` has named
  dimnames, it can be a character vector selecting dimension names.

- FUN:

  A function taking at least one argument.

- simplify:

  a logical indicating whether results should be simplified if possible.

- future.envir:

  An [environment](https://rdrr.io/r/base/environment.html) passed as
  argument `envir` to
  [`future::future()`](https://future.futureverse.org/reference/future.html)
  as-is.

- future.stdout:

  If `TRUE` (default), then the standard output of the underlying
  futures is captured, and re-outputted as soon as possible. If `FALSE`,
  any output is silenced (by sinking it to the null device as it is
  outputted). If `NA` (not recommended), output is *not* intercepted.

- future.conditions:

  A character string of conditions classes to be captured and relayed.
  The default is the same as the `condition` argument of
  [`future::Future()`](https://future.futureverse.org/reference/Future-class.html).
  To not intercept conditions, use `conditions = character(0L)`. Errors
  are always relayed.

- future.globals:

  A logical, a character vector, or a named list for controlling how
  globals are handled. For details, see below section.

- future.packages:

  (optional) a character vector specifying packages to be attached in
  the R environment evaluating the future.

- future.seed:

  A logical or an integer (of length one or seven), or a list of
  `length(X)` with pre-generated random seeds. For details, see below
  section.

- future.scheduling:

  Average number of futures ("chunks") per worker. If `0.0`, then a
  single future is used to process all elements of `X`. If `1.0` or
  `TRUE`, then one future per worker is used. If `2.0`, then each worker
  will process two futures (if there are enough elements in `X`). If
  `Inf` or `FALSE`, then one future per element of `X` is used. Only
  used if `future.chunk.size` is `NULL`.

- future.chunk.size:

  The average number of elements per future ("chunk"). If `Inf`, then
  all elements are processed in a single future. If `NULL`, then
  argument `future.scheduling` is used.

- future.label:

  If a character string, then each future is assigned a label
  `sprintf(future.label, chunk_idx)`. If TRUE, then the same as
  `future.label = "future_lapply-%d"`. If FALSE, no labels are assigned.

- ...:

  (optional) Additional arguments passed to `FUN()`, except `future.*`
  arguments, which are passed on to
  [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
  used internally.

## Value

Returns a vector or array or list of values obtained by applying a
function to margins of an array or matrix. See
[`base::apply()`](https://rdrr.io/r/base/apply.html) for details.

## Author

The implementation of `future_apply()` is adopted from the source code
of the corresponding base R function, which is licensed under GPL (\>=
2) with 'The R Core Team' as the copyright holder.

## Examples

``` r
## ---------------------------------------------------------
## apply()
## ---------------------------------------------------------
X <- matrix(c(1:4, 1, 6:8), nrow = 2L)

Y0 <- apply(X, MARGIN = 1L, FUN = table)
Y1 <- future_apply(X, MARGIN = 1L, FUN = table)
print(Y1)
#> [[1]]
#> ...future.X_jj
#> 1 3 7 
#> 2 1 1 
#> 
#> [[2]]
#> ...future.X_jj
#> 2 4 6 8 
#> 1 1 1 1 
#> 
stopifnot(all.equal(Y1, Y0, check.attributes = FALSE)) ## FIXME

Y0 <- apply(X, MARGIN = 1L, FUN = stats::quantile)
Y1 <- future_apply(X, MARGIN = 1L, FUN = stats::quantile)
print(Y1)
#>      [,1] [,2]
#> 0%      1  2.0
#> 25%     1  3.5
#> 50%     2  5.0
#> 75%     4  6.5
#> 100%    7  8.0
stopifnot(all.equal(Y1, Y0))


## ---------------------------------------------------------
## Parallel Random Number Generation
## ---------------------------------------------------------
# \donttest{
## Regardless of the future plan, the number of workers, and
## where they are, the random numbers produced are identical

X <- matrix(c(1:4, 1, 6:8), nrow = 2L)

plan(multisession)
set.seed(0xBEEF)
Y1 <- future_apply(X, MARGIN = 1L, FUN = sample, future.seed = TRUE)
print(Y1)
#>      [,1] [,2]
#> [1,]    3    8
#> [2,]    1    6
#> [3,]    7    2
#> [4,]    1    4

plan(sequential)
set.seed(0xBEEF)
Y2 <- future_apply(X, MARGIN = 1L, FUN = sample, future.seed = TRUE)
print(Y2)
#>      [,1] [,2]
#> [1,]    3    8
#> [2,]    1    6
#> [3,]    7    2
#> [4,]    1    4

stopifnot(all.equal(Y1, Y2))
# }
```
