#' @inheritParams future_mapply
#' 
#' @param f A function of the arity \eqn{k} if `future_Map()` is called with
#' \eqn{k} arguments. Unary for `future_Filter()`.
#' 
#' @param x A vector-like object to iterate over.
#' 
#' @return
#' See [base::Filter()] for details.
#'
#' @examples
#' is_even <- function(x) { x %% 2 == 0 }
#' x <- sample.int(100, size = 1000, replace = TRUE)
#' y <- Filter(is_even, x)
#'
#' @author
#' The implementations of `future_Filter()` is adopted from the source code
#' of the corresponding base \R function `Filter()`, which is licensed under
#' GPL (>= 2) with 'The R Core Team' as the copyright holder.
#' 
#' @rdname future_mapply
#' @export
future_Filter <- function(f, x, ...) {
  f <- match.fun(f)
  z <- unlist(future_lapply(x, f, ...))
  if (is.null(z)) 
    return(x[integer()])
  ind <- as.logical(z)
  x[which(ind)]
}
