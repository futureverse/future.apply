# Apply a Function over a List or Vector via Futures

`future_lapply()` implements
[`base::lapply()`](https://rdrr.io/r/base/lapply.html) using futures
with perfect replication of results, regardless of future backend used.
Analogously, this is true for all the other `future_nnn()` functions.

## Usage

``` r
future_eapply(
  env,
  FUN,
  ...,
  all.names = FALSE,
  USE.NAMES = TRUE,
  future.envir = parent.frame(),
  future.label = "future_eapply-%d"
)

future_lapply(
  X,
  FUN,
  ...,
  future.envir = parent.frame(),
  future.stdout = TRUE,
  future.conditions = "condition",
  future.globals = TRUE,
  future.packages = NULL,
  future.seed = FALSE,
  future.scheduling = 1,
  future.chunk.size = NULL,
  future.label = "future_lapply-%d"
)

future_replicate(
  n,
  expr,
  simplify = "array",
  future.seed = TRUE,
  ...,
  future.envir = parent.frame(),
  future.label = "future_replicate-%d"
)

future_sapply(
  X,
  FUN,
  ...,
  simplify = TRUE,
  USE.NAMES = TRUE,
  future.envir = parent.frame(),
  future.label = "future_sapply-%d"
)

future_tapply(
  X,
  INDEX,
  FUN = NULL,
  ...,
  default = NA,
  simplify = TRUE,
  future.envir = parent.frame(),
  future.label = "future_tapply-%d"
)

future_vapply(
  X,
  FUN,
  FUN.VALUE,
  ...,
  USE.NAMES = TRUE,
  future.envir = parent.frame(),
  future.label = "future_vapply-%d"
)
```

## Arguments

- env:

  An R environment.

- FUN:

  A function taking at least one argument.

- all.names:

  If `TRUE`, the function will also be applied to variables that start
  with a period (`.`), otherwise not. See
  [`base::eapply()`](https://rdrr.io/r/base/eapply.html) for details.

- USE.NAMES:

  See [`base::sapply()`](https://rdrr.io/r/base/lapply.html).

- future.envir:

  An [environment](https://rdrr.io/r/base/environment.html) passed as
  argument `envir` to
  [`future::future()`](https://future.futureverse.org/reference/future.html)
  as-is.

- future.label:

  If a character string, then each future is assigned a label
  `sprintf(future.label, chunk_idx)`. If TRUE, then the same as
  `future.label = "future_lapply-%d"`. If FALSE, no labels are assigned.

- X:

  An R object for which a [`split`](https://rdrr.io/r/base/split.html)
  method exists. Typically vector-like, allowing subsetting with
  [`[`](https://rdrr.io/r/base/Extract.html), or a data frame.

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

- n:

  The number of replicates.

- expr:

  An R expression to evaluate repeatedly.

- simplify:

  See [`base::sapply()`](https://rdrr.io/r/base/lapply.html) and
  [`base::tapply()`](https://rdrr.io/r/base/tapply.html), respectively.

- INDEX:

  A list of one or more factors, each of same length as `X`. The
  elements are coerced to
  [`factor`](https://rdrr.io/r/base/factor.html)s by
  [`as.factor()`](https://rdrr.io/r/base/factor.html). Can also be a
  formula, which is useful if `X` is a data frame; see the `f` argument
  in [`split()`](https://rdrr.io/r/base/split.html) for interpretation.

- default:

  See [`base::tapply()`](https://rdrr.io/r/base/tapply.html).

- FUN.VALUE:

  A template for the required return value from each `FUN(X[ii], ...)`.
  Types may be promoted to a higher type within the ordering logical \<
  integer \< double \< complex, but not demoted. See
  [`base::vapply()`](https://rdrr.io/r/base/lapply.html) for details.

- ...:

  (optional) Additional arguments passed to `FUN()`. For
  `future_*apply()` functions and
  [`replicate()`](https://rdrr.io/r/base/lapply.html), any `future.*`
  arguments part of `\ldots` are passed on to `future_lapply()` used
  internally. Importantly, if this is called inside another function
  which also declares ... arguments, do not forget to explicitly pass
  such ... arguments down to the `future_*apply()` function too, which
  will then pass them on to `FUN()`. See below for an example.

## Value

A named (unless `USE.NAMES = FALSE`) list. See
[`base::eapply()`](https://rdrr.io/r/base/eapply.html) for details.

For `future_lapply()`, a list with same length and names as `X`. See
[`base::lapply()`](https://rdrr.io/r/base/lapply.html) for details.

`future_replicate()` is a wrapper around `future_sapply()` and return
simplified object according to the `simplify` argument. See
[`base::replicate()`](https://rdrr.io/r/base/lapply.html) for details.
Since `future_replicate()` usually involves random number generation
(RNG), it uses `future.seed = TRUE` by default in order produce sound
random numbers regardless of future backend and number of background
workers used.

For `future_sapply()`, a vector with same length and names as `X`. See
[`base::sapply()`](https://rdrr.io/r/base/lapply.html) for details.

`future_tapply()` returns an array with mode `"list"`, unless
`simplify = TRUE` (default) *and* `FUN` returns a scalar, in which case
the mode of the array is the same as the returned scalars. See
[`base::tapply()`](https://rdrr.io/r/base/tapply.html) for details.

For `future_vapply()`, a vector with same length and names as `X`. See
[`base::vapply()`](https://rdrr.io/r/base/lapply.html) for details.

## Global variables

Argument `future.globals` may be used to control how globals should be
handled similarly to how the `globals` argument is used with
[`future()`](https://future.futureverse.org/reference/future.html).
Since all function calls use the same set of globals, this function can
do any gathering of globals upfront (once), which is more efficient than
if it would be done for each future independently. If `TRUE` (default),
then globals are automatically identified and gathered. If a character
vector of names is specified, then those globals are gathered. If a
named list, then those globals are used as is. In all cases, `FUN` and
any `\ldots` arguments are automatically passed as globals to each
future created as they are always needed.

## Reproducible random number generation (RNG)

Unless `future.seed` is `FALSE` or `NULL`, this function guarantees to
generate the exact same sequence of random numbers *given the same
initial seed / RNG state* - this regardless of type of futures,
scheduling ("chunking") strategy, and number of workers.

RNG reproducibility is achieved by pregenerating the random seeds for
all iterations (over `X`) by using parallel RNG streams. In each
iteration, these seeds are set before calling `FUN(X[[ii]], ...)`.
*Note, for large `length(X)` this may introduce a large overhead.*

If `future.seed = TRUE`, then
[`.Random.seed`](https://rdrr.io/r/base/Random.html) is used if it holds
a parallel RNG seed, otherwise one is created randomly.

If `future.seed = FALSE`, it is expected that none of the
`FUN(X[[ii]], ...)` function calls use random number generation. If they
do, then an informative warning or error is produced depending on
settings. See
[`future::future()`](https://future.futureverse.org/reference/future.html)
for more details. Using `future.seed = NULL`, is like
`future.seed = FALSE` but without the check whether random numbers were
generated or not.

As input, `future.seed` may also take a fixed initial seed (integer),
either as a full parallel RNG seed, or as a seed generating such a full
parallel seed. This seed will be used to generated `length(X)` parallel
RNG streams.

In addition to the above, it is possible to specify a pre-generated
sequence of RNG seeds as a list such that
`length(future.seed) == length(X)` and where each element is an integer
seed vector that can be assigned to
[`.Random.seed`](https://rdrr.io/r/base/Random.html). One approach to
generate a set of valid RNG seeds based on fixed initial seed (here
`42L`) is:

    seeds <- future_lapply(seq_along(X), FUN = function(x) .Random.seed,
                           future.chunk.size = Inf, future.seed = 42L)

**Note that `as.list(seq_along(X))` is *not* a valid set of such
`.Random.seed` values.**

In all cases but `future.seed = FALSE` and `NULL`, the RNG state of the
calling R processes after this function returns is guaranteed to be
"forwarded one step" from the RNG state that was before the call and in
the same way regardless of `future.seed`, `future.scheduling` and future
strategy used. This is done in order to guarantee that an R script
calling `future_lapply()` multiple times should be numerically
reproducible given the same initial seed.

## Load balancing ("chunking")

Whether load balancing ("chunking") should take place or not can be
controlled by specifying either argument `future.scheduling = <ratio>`
or `future.chunk.size = <count>`.

The value `future.chunk.size` specifies the average number of elements
processed per future ("chunks"). If `+Inf`, then all elements are
processed in a single future (one worker). If `NULL`, then argument
`future.scheduling` is used.

The value `future.scheduling` specifies the average number of futures
("chunks") that each worker processes. If `0.0`, then a single future is
used to process all iterations; none of the other workers are not used.
If `1.0` or `TRUE`, then one future per worker is used. If `2.0`, then
each worker will process two futures (if there are enough iterations).
If `+Inf` or `FALSE`, then one future per iteration is used. The default
value is `scheduling = 1.0`.

## Control processing order of elements

Attribute `ordering` of `future.chunk.size` or `future.scheduling` can
be used to control the ordering the elements are iterated over, which
only affects the processing order and *not* the order values are
returned. This attribute can take the following values:

- index vector - a numeric vector of length `length(X)`

- function - a function taking one argument which is called as
  `ordering(length(X))` and which must return an index vector of length
  `length(X)`, e.g. `function(n) rev(seq_len(n))` for reverse ordering.

- `"random"` - this will randomize the ordering via random index vector
  `sample.int(length(X))`.

For example, `future.scheduling = structure(TRUE, ordering = "random")`.
*Note*, when elements are processed out of order, then captured standard
output and conditions are relayed in that order as well.

## Author

The implementations of `future_replicate()`, `future_sapply()`, and
`future_tapply()` are adopted from the source code of the corresponding
base R functions, which are licensed under GPL (\>= 2) with 'The R Core
Team' as the copyright holder.

## Examples

``` r
## ---------------------------------------------------------
## lapply(), sapply(), tapply()
## ---------------------------------------------------------
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE, FALSE, FALSE, TRUE))
y0 <- lapply(x, FUN = quantile, probs = 1:3/4)
y1 <- future_lapply(x, FUN = quantile, probs = 1:3/4)
print(y1)
#> $a
#>  25%  50%  75% 
#> 3.25 5.50 7.75 
#> 
#> $beta
#>       25%       50%       75% 
#> 0.2516074 1.0000000 5.0536690 
#> 
#> $logic
#> 25% 50% 75% 
#> 0.0 0.5 1.0 
#> 
stopifnot(all.equal(y1, y0))

y0 <- sapply(x, FUN = quantile)
y1 <- future_sapply(x, FUN = quantile)
print(y1)
#>          a        beta logic
#> 0%    1.00  0.04978707   0.0
#> 25%   3.25  0.25160736   0.0
#> 50%   5.50  1.00000000   0.5
#> 75%   7.75  5.05366896   1.0
#> 100% 10.00 20.08553692   1.0
stopifnot(all.equal(y1, y0))

y0 <- vapply(x, FUN = quantile, FUN.VALUE = double(5L))
y1 <- future_vapply(x, FUN = quantile, FUN.VALUE = double(5L))
print(y1)
#>          a        beta logic
#> 0%    1.00  0.04978707   0.0
#> 25%   3.25  0.25160736   0.0
#> 50%   5.50  1.00000000   0.5
#> 75%   7.75  5.05366896   1.0
#> 100% 10.00 20.08553692   1.0
stopifnot(all.equal(y1, y0))


## ---------------------------------------------------------
## Parallel Random Number Generation
## ---------------------------------------------------------
# \donttest{
## Regardless of the future plan, the number of workers, and
## where they are, the random numbers produced are identical

plan(multisession)
set.seed(0xBEEF)
y1 <- future_lapply(1:5, FUN = rnorm, future.seed = TRUE)
str(y1)
#> List of 5
#>  $ : num -1.32
#>  $ : num [1:2] -1.5 0.293
#>  $ : num [1:3] 2.787 0.929 -0.461
#>  $ : num [1:4] -0.193 -0.184 0.504 1.255
#>  $ : num [1:5] -1.704 1.142 2.352 -1.474 -0.559

plan(sequential)
set.seed(0xBEEF)
y2 <- future_lapply(1:5, FUN = rnorm, future.seed = TRUE)
str(y2)
#> List of 5
#>  $ : num -1.32
#>  $ : num [1:2] -1.5 0.293
#>  $ : num [1:3] 2.787 0.929 -0.461
#>  $ : num [1:4] -0.193 -0.184 0.504 1.255
#>  $ : num [1:5] -1.704 1.142 2.352 -1.474 -0.559

stopifnot(all.equal(y1, y2))
# }


## ---------------------------------------------------------
## Process chunks of data.frame rows in parallel
## ---------------------------------------------------------
iris <- datasets::iris
chunks <- split(iris, seq(1, nrow(iris), length.out = 3L))
y0 <- lapply(chunks, FUN = function(iris) sum(iris$Sepal.Length))
y0 <- do.call(sum, y0)
y1 <- future_lapply(chunks, FUN = function(iris) sum(iris$Sepal.Length))
y1 <- do.call(sum, y1)
print(y1)
#> [1] 876.5
stopifnot(all.equal(y1, y0))


## ---------------------------------------------------------
## Remember to pass down '...' arguments
## ---------------------------------------------------------
## It is important that we don't use '...' as a global variable,
## as attempted in the following not_okay_fcn()
bad_fcn <- function(X, ...) {
  y <- future_lapply(X, FUN = function(x) {
    mean(x, ...)  ## here '...' is a global variable
  })
  y
}

## Instead, make sure to pass '...' via arguments all the way through
good_fcn <- function(X, ...) { ## outer '...'
  y <- future_lapply(X, FUN = function(x, ...) {
    mean(x, ...)  ## here '...' is an argument of FUN()
  }, ...) ## pass outer '...' to FUN()
  y
}

```
