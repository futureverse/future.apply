source("incl/start.R")
options(future.debug = FALSE)

foo <- function(..., FUN = function(...) list(...)) {
  args <- list(...)
  future_lapply(1L, FUN = function(x) {
    do.call(FUN, args = c(list(x), args))
  })
}

bar <- function(..., fun = function(...) list(...)) {
  future_lapply(1L, FUN = function(x) fun(x, ...))
}

yaa <- function(..., FUN = function(...) list(...)) {
  future_lapply(1L, FUN = function(x) {
    do.call(FUN, args = c(list(x), ...))
  })
}


for (strategy in supportedStrategies()) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  x1 <- foo()
  y1 <- bar()
  stopifnot(identical(y1, x1))
  z1 <- yaa()
  stopifnot(identical(z1, x1))

  x2 <- foo(a = 2)
  if (packageVersion("future") > "1.40.0-9200") {
    y2 <- bar(a = 2)
    z2 <- yaa(a = 2)
    stopifnot(identical(y2, x2))
    stopifnot(identical(z2, x2))
  }
  
  message(sprintf("- plan('%s') ... done", strategy))
}

source("incl/end.R")
