#' Apply Smoothing Kernel in Parallel
#'
#' `future_kernapply()` is a futurized version of
#' [stats::kernapply()], i.e. it computes, in parallel, the
#' convolution between an input sequence and a specific kernel.
#' Parallelization takes place over columns when `x` is a matrix,
#' including a `ts` matrix.
#'
#' @inheritParams stats::kernapply
#'
#' @returns
#' See [stats::kernapply()] for details.
#'
#' @examples
#' library(datasets)
#' library(stats)
#'
#' X <- EuStockMarkets[, 1:2]
#' k <- kernel("daniell", 50)  # a long moving average
#' X_smooth <- future_kernapply(X, k = k)
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
  if (is.vector(x)) {
    dots <- drop_future_args(...)
    if (length(dots) == 0L) {
      return(kernapply(x, k, circular = circular))
    } else {
      args <- c(list(x, k, circular = circular), dots)
      return(do.call(kernapply, args = args))
    }
  } else if (is.matrix(x)) {
    return(future_apply(x, MARGIN = 2, FUN = kernapply, k, circular = circular, ...))
  } else {
    stop("'future_kernapply' is not available for object 'x'")
  }
}


#' @rdname future_kernapply
#'
#' @importFrom stats kernapply end frequency ts
#' @export
future_kernapply.ts <- function(x, k, circular = FALSE, ...) {
  if (!is.matrix(x)) {
    dots <- drop_future_args(...)
    if (length(dots) == 0L) {
      y <- kernapply(as.vector(x), k, circular = circular)
    } else {
      args <- c(list(as.vector(x), k, circular = circular), dots)
      y <- do.call(kernapply, args = args)
    }
  } else {
    y <- future_apply(x, MARGIN = 2, FUN = kernapply, k, circular = circular, ...)
  }
  ts(y, end = end(x), frequency = frequency(x))
}
