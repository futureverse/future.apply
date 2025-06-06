now <- function(x = Sys.time(), format = "[%H:%M:%OS3] ") {
  ## format(x, format = format) ## slower
  format(as.POSIXlt(x, tz = ""), format = format)
}

debug_indent <- local({
  symbols <- rep(c("|", ":", ".", "'", ",", ";", "`"), times = 10L)
  function() {
    depth <- length(.debug[["stack"]])
    if (depth == 0) return("")
    indent <- getOption("future.debug.indent", " ")
    paste(paste(symbols[seq_len(depth)], indent, sep = ""), collapse = "")
  }
})

if (!exists(".debug", inherits = FALSE)) .debug <- new.env(parent = emptyenv())
if (!"stack" %in% names(".debug")) .debug$stack <- list()

mdebug_push <- function(...) {
  msg <- mdebug(...)
  .debug$stack <- c(.debug$stack, msg)
  invisible(msg)
}

mdebugf_push <- function(...) {
  msg <- mdebugf(...)
  .debug$stack <- c(.debug$stack, msg)
  invisible(msg)
}

mdebug_pop <- function(...) {
  n <- length(.debug$stack)
  msg <- c(...)
  if (length(msg) == 0) {
    msg <- .debug$stack[n]
    msg <- sprintf("%s done", msg)
  }
  .debug$stack <- .debug$stack[-n]
  if (length(msg) == 0 || !is.na(msg)) mdebug(msg)
}

mdebugf_pop <- function(...) {
  n <- length(.debug$stack)
  msg <- .debug$stack[n]
  .debug$stack <- .debug$stack[-n]
  mdebug(sprintf("%s done", msg))
}

mdebug <- function(..., prefix = now()) {
  prefix <- paste(prefix, debug_indent(), sep = "")
  msg <- paste(..., sep = "")
  message(sprintf("%s%s", prefix, msg))
  invisible(msg)
}

mdebugf <- function(..., appendLF = TRUE, prefix = now()) {
  prefix <- paste(prefix, debug_indent(), sep = "")
  msg <- sprintf(...)
  message(sprintf("%s%s", prefix, msg), appendLF = appendLF)
  invisible(msg)
}

#' @importFrom utils capture.output
mprint <- function(..., appendLF = TRUE, prefix = now()) {
  prefix <- paste(prefix, debug_indent(), sep = "")
  message(paste(prefix, capture.output(print(...)), sep = "", collapse = "\n"), appendLF = appendLF)
}

#' @importFrom utils capture.output str
mstr <- function(..., appendLF = TRUE, prefix = now()) {
  prefix <- paste(prefix, debug_indent(), sep = "")
  message(paste(prefix, capture.output(str(...)), sep = "", collapse = "\n"), appendLF = appendLF)
}
