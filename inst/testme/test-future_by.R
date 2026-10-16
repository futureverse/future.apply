#' @tags future_by
#' @tags listenv
#' @tags sequential multisession multicore

library(future.apply)
library(listenv)

all_equal_but_call <- function(target, current, ...) {
  attr(target, "call") <- NULL
  attr(current, "call") <- NULL
  all.equal(target = target, current = current, ...)
}

message("*** future_by() ...")

## ---------------------------------------------------------
## by()
## ---------------------------------------------------------
if (require("datasets") && require("stats")) { ## warpbreaks & lm()
  ## Use a local variable to test that it is properly exported, because
  ## 'warpbreaks' is available in all R sessions
  data <- warpbreaks
  
  y0 <- by(data[, 1:2], INDICES = data[,"tension"], FUN = summary)
  y1 <- by(data[, 1], INDICES = data[, -1], FUN = summary, digits = 2L)
  y2 <- by(data, INDICES = data[,"tension"], FUN = function(x, ...) {
    lm(breaks ~ wool, data = x, ...)
  }, singular.ok = FALSE)
  
  ## now suppose we want to extract the coefficients by group
  tmp <- with(data, by(data, INDICES = tension, FUN = function(x) {
    lm(breaks ~ wool, data = x)
  }))
  y3 <- sapply(tmp, coef)

  ## Source: {r-source}/tests/reg-tests-1d.R
  by2 <- function(data, INDICES, FUN) {
    by(data, INDICES = INDICES, FUN = FUN)
  }
  future_by2 <- function(data, INDICES, FUN) {
    future_by(data, INDICES = INDICES, FUN = FUN)
  }
  y4 <- by2(data, INDICES = data[,"tension"], FUN = summary)

  for (cores in 1:availCores) {
    message(sprintf("Testing with %d cores ...", cores))
    options(mc.cores = cores)
    strategies <- supportedStrategies(cores)
  
    for (strategy in supportedStrategies()) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
    
      y0f <- future_by(data[, 1:2], INDICES = data[,"tension"], FUN = summary)
      stopifnot(all_equal_but_call(y0f, y0, check.attributes = FALSE))
      
      y1f <- future_by(data[, 1], INDICES = data[, -1], FUN = summary, digits = 2L)
      stopifnot(all_equal_but_call(y1f, y1))
      
      y2f <- future_by(data, INDICES = data[,"tension"], FUN = function(x, ...) {
        lm(breaks ~ wool, data = x, ...)
      }, singular.ok = FALSE)
      stopifnot(all_equal_but_call(y2f, y2))
      
      ## now suppose we want to extract the coefficients by group
      tmp <- with(data, future_by(data, INDICES = tension, FUN = function(x) {
        lm(breaks ~ wool, data = x)
      }))
      y3f <- sapply(tmp, coef)
      stopifnot(all_equal_but_call(y3f, y3))
      
      y4f <- future_by2(data, INDICES = data[,"tension"], FUN = summary)
      stopifnot(all_equal_but_call(y4f, y4))

      ## Defunct /HB 2025-01-11
      res <- tryCatch({
        y4f2 <- future_by2(data, INDICES = data[,"tension"], FUN = "summary")
      }, error = identity)
      stopifnot(inherits(res, "error"))
      if (getRversion() >= "3.6.0") {
        stopifnot(inherits(res, "defunctError"))
      }
    } ## for (strategy ...)
    
    message(sprintf("Testing with %d cores ... DONE", cores))
  } ## for (cores ...)
} ## if (require("stats"))


message("*** future_by() - default method (matrix) ...")

m <- matrix(1:12, nrow = 4L)
g <- rep(1:2, times = 2L)
y0 <- by(m, INDICES = g, FUN = colSums)
y1 <- future_by(m, INDICES = g, FUN = colSums)
attr(y0, "call") <- NULL; attr(y1, "call") <- NULL
stopifnot(all.equal(y0, y1, check.attributes = FALSE))

message("*** future_by() - default method (matrix) ... DONE")


if (require("datasets") && require("stats")) { ## warpbreaks
  data <- warpbreaks

  ## Formula 'INDICES' requires R (>= 4.3.0), just like base::by()
  if (getRversion() >= "4.3.0") {
    message("*** future_by() - data.frame method with formula 'INDICES' ...")

    y0 <- by(data, INDICES = ~ tension, FUN = summary)
    y1 <- future_by(data, INDICES = ~ tension, FUN = summary)
    attr(y0, "call") <- NULL; attr(y1, "call") <- NULL
    stopifnot(all.equal(y0, y1, check.attributes = FALSE))

    message("*** future_by() - data.frame method with formula 'INDICES' ... DONE")
  }


  message("*** future_by() - exceptions ...")

  ## Error: 'INDICES' of length zero
  res <- tryCatch({
    future_by(data, INDICES = list(), FUN = summary)
  }, error = identity)
  stopifnot(inherits(res, "error"))

  ## Error: length of 'INDICES' does not match 'data'
  res <- tryCatch({
    future_by(data, INDICES = 1:3, FUN = summary)
  }, error = identity)
  stopifnot(inherits(res, "error"))

  message("*** future_by() - exceptions ... DONE")


  message("*** future_by() - debug mode ...")

  options(future.apply.debug = TRUE)
  y <- future_by(data, INDICES = data[, "tension"], FUN = summary)
  options(future.apply.debug = FALSE)
  stopifnot(inherits(y, "by"))

  message("*** future_by() - debug mode ... DONE")
} ## if (require("stats"))

message("*** future_by() ... DONE")
