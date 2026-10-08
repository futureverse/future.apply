drop_future_args <- function(...) {
  dots <- list(...)
  if (length(dots) == 0L) return(dots)
  names <- names(dots)
  if (is.null(names)) return(dots)
  dots <- dots[!grepl("^future[.]", names)]
  if (length(dots) == 0L) return(list())
  dots
}
