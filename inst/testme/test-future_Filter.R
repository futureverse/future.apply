#' @tags future_Filter
#' @tags sequential multisession multicore

library(future.apply)

message("*** future_Filter() ...")

is_even <- function(x) { x %% 2 == 0 }
x <- sample.int(100, size = 1000, replace = TRUE)

y_truth <- x[vapply(x, FUN.VALUE = NA, FUN = is_even)]
str(y_truth)

for (strategy in supportedStrategies()) {
  message(sprintf("*** strategy = %s ...", sQuote(strategy)))
  plan(strategy)

  y <- Filter(is_even, x)
  str(y)

  stopifnot(identical(y, y_truth))
  
  message(sprintf("*** strategy = %s ... done", sQuote(strategy)))
}

plan(sequential)

message("*** future_Filter() ... DONE")
