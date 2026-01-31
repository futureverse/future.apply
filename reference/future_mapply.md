# Apply a Function to Multiple List or Vector Arguments

`future_mapply()` implements
[`base::mapply()`](https://rdrr.io/r/base/mapply.html) using futures
with perfect replication of results, regardless of future backend used.
Analogously to [`mapply()`](https://rdrr.io/r/base/mapply.html),
`future_mapply()` is a multivariate version of
[`future_sapply()`](https://future.apply.futureverse.org/reference/future_lapply.md).
It applies `FUN` to the first elements of each ... argument, the second
elements, the third elements, and so on. Arguments are recycled if
necessary.

## Usage

``` r
future_Filter(f, x, ...)

future_Map(
  f,
  ...,
  future.envir = parent.frame(),
  future.label = "future_Map-%d"
)

future_mapply(
  FUN,
  ...,
  MoreArgs = NULL,
  SIMPLIFY = TRUE,
  USE.NAMES = TRUE,
  future.envir = parent.frame(),
  future.stdout = TRUE,
  future.conditions = "condition",
  future.globals = TRUE,
  future.packages = NULL,
  future.seed = FALSE,
  future.scheduling = 1,
  future.chunk.size = NULL,
  future.label = "future_mapply-%d"
)

future_.mapply(FUN, dots, MoreArgs, ..., future.label = "future_.mapply-%d")
```

## Arguments

- f:

  A function of the arity \\k\\ if `future_Map()` is called with \\k\\
  arguments.

- x:

  A vector-like object to iterate over.

- future.envir:

  An [environment](https://rdrr.io/r/base/environment.html) passed as
  argument `envir` to
  [`future::future()`](https://future.futureverse.org/reference/future.html)
  as-is.

- future.label:

  If a character string, then each future is assigned a label
  `sprintf(future.label, chunk_idx)`. If TRUE, then the same as
  `future.label = "future_lapply-%d"`. If FALSE, no labels are assigned.

- FUN:

  A function to apply, found via
  [`base::match.fun()`](https://rdrr.io/r/base/match.fun.html).

- MoreArgs:

  A list of other arguments to `FUN`.

- SIMPLIFY:

  A logical or character string; attempt to reduce the result to a
  vector, matrix or higher dimensional array; see the simplify argument
  of [`base::sapply()`](https://rdrr.io/r/base/lapply.html).

- USE.NAMES:

  A logical; use names if the first ... argument has names, or if it is
  a character vector, use that character vector as the names.

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
  globals are handled. For details, see
  [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md).

- future.packages:

  (optional) a character vector specifying packages to be attached in
  the R environment evaluating the future.

- future.seed:

  A logical or an integer (of length one or seven), or a list of
  `max(lengths(list(...)))` with pre-generated random seeds. For
  details, see
  [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md).

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

- dots:

  A list of arguments to vectorize over (vectors or lists of strictly
  positive length, or all of zero length).

- ...:

  Arguments to vectorize over, will be recycled to common length, or
  zero if one of them is of length zero.

## Value

See [base::Filter()](https://rdrr.io/r/base/funprog.html) for details.

`future_Map()` is a simple wrapper to `future_mapply()` which does not
attempt to simplify the result. See
[base::Map()](https://rdrr.io/r/base/funprog.html) for details.

`future_mapply()` returns a list, or for `SIMPLIFY = TRUE`, a vector,
array or list. See
[`base::mapply()`](https://rdrr.io/r/base/mapply.html) for details.

`future_.mapply()` returns a list. See
[`base::.mapply()`](https://rdrr.io/r/base/mapply.html) for details.

## Details

Note that [`base::.mapply()`](https://rdrr.io/r/base/mapply.html), which
`future_.mapply()` is modeled after is listed as an "internal" function
in R despite being exported.

## Author

The implementation of `future_Filter()` is adopted from the source code
of the corresponding base R function
[`Filter()`](https://rdrr.io/r/base/funprog.html), which is licensed
under GPL (\>= 2) with 'The R Core Team' as the copyright holder.

The implementation of `future_Map()` is adopted from the source code of
the corresponding base R function
[`Map()`](https://rdrr.io/r/base/funprog.html), which is licensed under
GPL (\>= 2) with 'The R Core Team' as the copyright holder.

## Examples

``` r
## ---------------------------------------------------------
## Filter()
## ---------------------------------------------------------
is_even <- function(x) { x %% 2 == 0 }
x <- sample.int(100, size = 1000, replace = TRUE)
y <- future_Filter(is_even, x)


## ---------------------------------------------------------
## mapply()
## ---------------------------------------------------------
y0 <- mapply(rep, 1:4, 4:1)
y1 <- future_mapply(rep, 1:4, 4:1)
stopifnot(identical(y1, y0))

y0 <- mapply(rep, times = 1:4, x = 4:1)
y1 <- future_mapply(rep, times = 1:4, x = 4:1)
stopifnot(identical(y1, y0))

y0 <- mapply(rep, times = 1:4, MoreArgs = list(x = 42))
y1 <- future_mapply(rep, times = 1:4, MoreArgs = list(x = 42))
stopifnot(identical(y1, y0))

y0 <- mapply(function(x, y) seq_len(x) + y,
             c(a =  1, b = 2, c = 3),  # names from first
             c(A = 10, B = 0, C = -10))
y1 <- future_mapply(function(x, y) seq_len(x) + y,
                    c(a =  1, b = 2, c = 3),  # names from first
                    c(A = 10, B = 0, C = -10))
stopifnot(identical(y1, y0))

word <- function(C, k) paste(rep.int(C, k), collapse = "")
y0 <- mapply(word, LETTERS[1:6], 6:1, SIMPLIFY = FALSE)
y1 <- future_mapply(word, LETTERS[1:6], 6:1, SIMPLIFY = FALSE)
stopifnot(identical(y1, y0))


## ---------------------------------------------------------
## Parallel Random Number Generation
## ---------------------------------------------------------
# \donttest{
## Regardless of the future plan, the number of workers, and
## where they are, the random numbers produced are identical

plan(multisession)
set.seed(0xBEEF)
y1 <- future_mapply(stats::runif, n = 1:4, max = 2:5,
                    MoreArgs = list(min = 1), future.seed = TRUE)
print(y1)
#> [[1]]
#> [1] 1.094084
#> 
#> [[2]]
#> [1] 1.133518 1.415726
#> 
#> [[3]]
#> [1] 3.992017 3.395174 3.470525
#> 
#> [[4]]
#> [1] 2.693828 1.588631 2.708467 4.411477
#> 

plan(sequential)
set.seed(0xBEEF)
y2 <- future_mapply(stats::runif, n = 1:4, max = 2:5,
                    MoreArgs = list(min = 1), future.seed = TRUE)
print(y2)
#> [[1]]
#> [1] 1.094084
#> 
#> [[2]]
#> [1] 1.133518 1.415726
#> 
#> [[3]]
#> [1] 3.992017 3.395174 3.470525
#> 
#> [[4]]
#> [1] 2.693828 1.588631 2.708467 4.411477
#> 

stopifnot(all.equal(y1, y2))
# }
```
