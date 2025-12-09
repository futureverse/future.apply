# Apply a Function to a Data Frame Split by Factors via Futures

Apply a Function to a Data Frame Split by Factors via Futures

## Usage

``` r
future_by(
  data,
  INDICES,
  FUN,
  ...,
  simplify = TRUE,
  future.envir = parent.frame()
)
```

## Arguments

- data:

  An R object, normally a data frame, possibly a matrix.

- INDICES:

  A factor or a list of factors, each of length `nrow(data)`.

- FUN:

  a function to be applied to (usually data-frame) subsets of `data`.

- simplify:

  logical: see [`base::tapply()`](https://rdrr.io/r/base/tapply.html).

- future.envir:

  An [environment](https://rdrr.io/r/base/environment.html) passed as
  argument `envir` to
  [`future::future()`](https://future.futureverse.org/reference/future.html)
  as-is.

- ...:

  Additional arguments pass to
  [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
  and then to `FUN()`.

## Value

An object of class "by", giving the results for each subset. This is
always a list if simplify is false, otherwise a list or array (see
[`base::tapply()`](https://rdrr.io/r/base/tapply.html)). See also
[`base::by()`](https://rdrr.io/r/base/by.html) for details.

## Details

Internally, `data` is grouped by `INDICES` into a list of `data` subset
elements which is then processed by
[`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md).
When the groups differ significantly in size, the processing time may
differ significantly between the groups. To correct for processing-time
imbalances, adjust the amount of chunking via arguments
`future.scheduling` and `future.chunk.size`.

## Note on 'stringsAsFactors'

The `future_by()` is modeled as closely as possible to the behavior of
[`base::by()`](https://rdrr.io/r/base/by.html). Both functions have
"default" S3 methods that calls `data <- as.data.frame(data)`
internally. This call may in turn call an S3 method for
[`as.data.frame()`](https://rdrr.io/r/base/as.data.frame.html) that
coerces strings to factors or not depending on whether it has a
`stringsAsFactors` argument and what its default is. For example, the S3
method of [`as.data.frame()`](https://rdrr.io/r/base/as.data.frame.html)
for lists changed its (effective) default from `stringsAsFactors = TRUE`
to `stringsAsFactors = TRUE` in R 4.0.0.

## Examples

``` r
## ---------------------------------------------------------
## by()
## ---------------------------------------------------------
library(datasets) ## warpbreaks
library(stats)    ## lm()

y0 <- by(warpbreaks, warpbreaks[,"tension"],
         function(x) lm(breaks ~ wool, data = x))

plan(multisession)
y1 <- future_by(warpbreaks, warpbreaks[,"tension"],
                function(x) lm(breaks ~ wool, data = x))

plan(sequential)
y2 <- future_by(warpbreaks, warpbreaks[,"tension"],
                function(x) lm(breaks ~ wool, data = x))
```
