#' Creates a vapply-like FUN function for future_lapply()
#'
#' @param FUN The original `vapply()` FUN function to be applied to
#' each element `x`.
#'
#' @param times Excepted length of each `FUN(x)`.
#'
#' @param valid_types Expected types of each `FUN(x)`
#'
#' @return A function can evaluates `FUN(x)`.
#'
#' @details
#' Technically, this function could be an internal anonymous function of
#' [future_apply()], but if doing so, it would introduce a unnecessary
#' payload exported to parallel workers. By declaring it as an internal
#' function in the package namespace, we avoid one half of that problem.
#' The other half is avoided by forcing each argument to be resolved,
#' which is technically not necessary, because \pkg{future}'s
#' global-discovery algorithm does this as well.
#'
#' @noRd
#' @keywords internal
make_future_vapply_FUN <- function(FUN, times, valid_types) {
  ## We force the evaluation of the argument to avoid that the created
  ## functions carries them as promises, which would have all of the
  ## calling frame enclosed, e.g. including the full 'X' object.
  ## Note, technically this is also done by the global-discovery algorithm
  ## in the 'future' package, but having it hear makes it clear what is
  ## going on and what we try to avoid.
  force(FUN)
  force(times)
  force(valid_types)
  
  function(x, ...) {
    value <- FUN(x, ...)
    
    ## Assert expected length
    if (length(value) != times) {
      stopf("values must be length %d, but FUN(X[[ii]]) result is length %d",
            times, length(value))
    }
    
    ## Assert expected type
    stop_if_not(typeof(value) %in% valid_types)
    
    value
  }
}

#' @inheritParams future_lapply
#' 
#' @param FUN.VALUE A template for the required return value from
#'        each `FUN(X[ii], ...)`.
#' Types may be promoted to a higher type within the ordering
#' logical < integer < double < complex, but not demoted.
#' See [base::vapply()] for details.
#'
#' @return
#' For `future_vapply()`, a vector with same length and names as \code{X}.
#' See [base::vapply()] for details.
#'
#' @export
#'
#' @rdname future_lapply
future_vapply <- function(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE, future.envir = parent.frame(), future.label = "future_vapply-%d") {
  ## Coerce to as.list()?
  if (!is.vector(X) || is.object(X)) X <- as.list(X)
  
  n <- length(X)
  FUN <- match.fun(FUN)
  stop_if_not(is.function(FUN))
  stop_if_not(is.vector(FUN.VALUE) || is.array(FUN.VALUE))
  type <- typeof(FUN.VALUE)
  times <- length(FUN.VALUE)
  dim <- dim(FUN.VALUE)
  stop_if_not(is.logical(USE.NAMES), length(USE.NAMES) == 1L, !is.na(USE.NAMES))

  valid_types <- switch(
    type,
    logical =   "logical",
    integer = c("logical", "integer"),
    double  = c("logical", "integer", "double"),
    complex = c("logical", "integer", "double", "complex"),
    type
  )

  vapply_FUN <- make_future_vapply_FUN(FUN, times, valid_types)
  
  res <- future_lapply(X, FUN = vapply_FUN, ..., future.envir = future.envir, future.label = future.label)

  if (!is.null(dim)) {
    dim_res <- c(dim, n)
  } else if (times != 1L) {
    dim_res <- c(times, n)
  } else {
    dim_res <- NULL
  }

  if (USE.NAMES) {
    if (is.null(dim)) {
      names_FUN.VALUE <- names(FUN.VALUE)
      if (is.null(names_FUN.VALUE) && length(res) > 0L) names_FUN.VALUE <- names(res[[1]])
    } else {
      names_FUN.VALUE <- dimnames(FUN.VALUE)
      if (is.null(names_FUN.VALUE) && length(res) > 0L) names_FUN.VALUE <- dimnames(res[[1]])
    }
  }
  
  res <- unlist(res, recursive = FALSE, use.names = FALSE)
  if (is.null(res)) {
    res <- vector(mode = type, length = 0L)
  } else if (storage.mode(res) != type) {
    storage.mode(res) <- type
  }
  if (!is.null(dim_res)) dim(res) <- dim_res
  
  if (USE.NAMES) {
    if (is.array(res)) {
      n_dim <- length(dim(res))
      dimnames <- vector("list", length = n_dim)
      if (is.null(dim)) {
        names <- names(X)
        if (!is.null(names)) dimnames[[2]] <- names
        names <- names_FUN.VALUE
        if (!is.null(names)) dimnames[[1]] <- names
      } else {
        names <- names(X)
        if (!is.null(names)) dimnames[[n_dim]] <- names
        names <- names_FUN.VALUE
        if (!is.null(names)) dimnames[-n_dim] <- names
      }
      if (!all(unlist(lapply(dimnames, FUN = is.null), use.names = FALSE))) {
        dimnames(res) <- dimnames
      }
    } else {
      names(res) <- names(X)
    }
  }
  
  res  
}
