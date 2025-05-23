#' Apply Smoothing Kernel in Parallel
#'
#' `future_kernapply()` is a futurized version of
#' [stats::kernapply()], i.e. it computes, in parallel, the
#' convolution between an input sequence and a specific kernel.
#' Parallelization takes place when `x` is a matrix or a
#' `tskernel` object.
#'
#' @inheritParams stats::kernapply
#'
#' @returns
#' See [stats::kernapply] for details.
#'
#' @examples
#' library(datasets)
#' library(stats)
#'
#' x <- EuStockMarkets[,1]
#' k <- kernel("daniell", 50)  # a long moving average
#' x <- future_kernapply(x, k = k)
#'
#' @export
future_kernapply <- function(x, ...) {
  UseMethod("future_kernapply")
}


#' @rdname future_kernapply
#'
#' @importFrom stats kernapply
#' @export
future_kernapply.default <- function(x, k, circular = FALSE, ...) {
    if (is.vector(x))
        return (kernapply(x, k, circular=circular))
    else if (is.matrix(x))
        return (apply(x, MARGIN=2, FUN=future_kernapply, k, circular=circular))
    else
        stop ("'future_kernapply' is not available for object 'x'")
}

#' @rdname future_kernapply
#'
#' @importFrom stats kernapply end frequency ts
#' @export
future_kernapply.ts <- function(x, k, circular = FALSE, ...) {
    if (!is.matrix(x))
        y <- kernapply(as.vector(x), k, circular=circular)
    else
        y <- apply(x, MARGIN=2L, FUN=future_kernapply, k, circular=circular)
    ts(y, end=end(x), frequency=frequency(x))
}

#' @rdname future_kernapply
#'
#' @importFrom stats kernel is.tskernel
#' @export
kernapply.tskernel <- function(x, k, ...) {
    if (!is.tskernel(x))
        stop ("'x' is not a kernel")
    if (!is.tskernel(k))
        stop ("'k' is not a kernel")
    n <- k$m
    xx <- c(rep_len(0,n), x[-x$m:x$m], rep_len(0,n))
    coef <- future_kernapply(xx, k, circular = TRUE)
    m <- length(coef) %/% 2L
    kernel(coef[(m+1L):length(coef)], m,
           paste0("Composite(", attr(x, "name"), ",", attr(k, "name"), ")"))
}
