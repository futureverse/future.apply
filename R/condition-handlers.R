#' @importFrom future FutureInterruptError
onInterrupt <- function(int, fcn_name, debug = FALSE) {
  if (debug) {
    mdebug("onInterrupt() ...")
    mdebug(sprintf("Received <%s>", class(int)[1]))
    on.exit(mdebug("onInterrupt() ... done"))
  }
  
  when <- Sys.time()
  host <- Sys.info()[["nodename"]]
  pid <- Sys.getpid()
  msg <- sprintf("%s() interrupted at %s, while running on %s (pid %s)", fcn_name, format(when, format = "%FT%T"), sQuote(host), pid)

  ## By signaling the interrupt as an error, the next handler, which should
  ## be onError(), will take care of canceling outstanding futures
  stop(FutureInterruptError(msg))
}



#' @importFrom future cancel resolve value
onError <- function(ex, futures, debug = FALSE) {
  if (debug) {
    mdebug("onError() ...")
    mdebug(sprintf("Received <%s>", class(ex)[1]))
    on.exit(mdebug("onError() ... done"))
  }
  
  ## Canceling all futures
  msg <- sprintf("Caught %s. Canceling all iterations ...", class(ex)[1])
  warning(msg, immediate. = TRUE, call. = FALSE)
  futures <- cancel(futures)

  ## Make sure all workers finish before continuing
  futures <- resolve(futures)

  ## Collect all results
  for (f in futures) tryCatch(value(f), error = identity)

  if (debug) mdebug(sprintf("Signaling: <%s>", class(ex)[1]))

  stop(ex)
}
