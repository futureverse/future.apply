## A version of base::sample.int() that does not change .Random.seed
stealth_sample.int <- function(n, size = n, replace = FALSE, ...) {
  oseed <- .GlobalEnv$.Random.seed
  on.exit({
    if (is.null(oseed)) {
      rm(list = ".Random.seed", envir = .GlobalEnv, inherits = FALSE)
    } else {
      .GlobalEnv$.Random.seed <- oseed
    }
  })
  sample.int(n = n, size = size, replace = replace, ...)
}
