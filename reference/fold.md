# Efficient Fold, Reduce, Accumulate, Combine of a Vector

Efficient Fold, Reduce, Accumulate, Combine of a Vector

## Usage

``` r
fold(x, f, left = TRUE, unname = TRUE, threshold = 1000L)
```

## Arguments

- x:

  A vector.

- f:

  A binary function, i.e. a function take takes two arguments.

- left:

  If `TRUE`, vector is combined from the left (the first element),
  otherwise the right (the last element).

- unname:

  If `TRUE`, function `f` is called as `f(unname(y), x[[ii]])`,
  otherwise as `f(y, x[[ii]])`, which may introduce name `"y"`.

- threshold:

  An integer (\>= 2) specifying the length where the recursive
  divide-and-conquer call will stop and incremental building of the
  partial value is performed. Using `threshold = +Inf` will disable
  recursive folding.

## Value

A vector.

## Details

In order for recursive folding to give the same results as non-recursive
folding, binary function `f` must be *associative* with itself, i.e.
`f(f(x[[1]], x[[2]]), x[[3]])` equals `f(x[[1]], f(x[[2]]), x[[3]])`.

This function is a more efficient (memory and speed) of
[`Reduce(f, x, right = !left, accumulate = FALSE)`](https://rdrr.io/r/base/funprog.html),
especially when `x` is long.
