stopf <- function(fmt, ..., call. = TRUE, domain = NULL) {  #nolint
  msg <- sprintf(fmt, ...)
  msg <- .makeMessage(msg, domain = domain)
  if (is.call(call.)) {
    call <- call.
  } else if (isTRUE(call.)) {
    call <- sys.call(which = -1L)
  } else {
    call <- NULL
  }
  cond <- simpleError(msg, call = call)
  stop(cond)
}

