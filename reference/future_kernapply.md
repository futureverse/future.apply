# Apply Smoothing Kernel in Parallel

`future_kernapply()` is a futurized version of
[`stats::kernapply()`](https://rdrr.io/r/stats/kernapply.html), i.e. it
computes, in parallel, the convolution between an input sequence and a
specific kernel. Parallelization takes place over columns when `x` is a
matrix, including a `ts` matrix.

## Usage

``` r
future_kernapply(x, ...)

# Default S3 method
future_kernapply(x, k, circular = FALSE, ...)

# S3 method for class 'ts'
future_kernapply(x, k, circular = FALSE, ...)
```

## Arguments

- x:

  an input vector, matrix, time series or kernel to be smoothed.

- ...:

  arguments passed to or from other methods.

- k:

  smoothing `"tskernel"` object.

- circular:

  a logical indicating whether the input sequence to be smoothed is
  treated as circular, i.e., periodic.

## Value

See [`stats::kernapply()`](https://rdrr.io/r/stats/kernapply.html) for
details.

## Examples

``` r
library(datasets)
library(stats)

X <- EuStockMarkets[, 1:2]
k <- kernel("daniell", 50)  # a long moving average
X_smooth <- future_kernapply(X, k = k)
```
