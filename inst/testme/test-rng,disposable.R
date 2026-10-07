#' @tags rng
#' @tags future_lapply future_sapply future_vapply future_mapply
#' @tags future_Map future_apply future_tapply future_eapply
#' @tags future_replicate future_by future_Filter future_.mapply
#' @tags sequential multisession multicore

library(future.apply)

options(future.debug = FALSE)

message("*** RNG with 'seed' via future.disposable ...")

## Random numbers must not depend on how elements are distributed
## across workers or chunks, regardless of whether 'seed' is passed
## via argument 'future.seed' or via R option 'future.disposable'

xs <- 1:6
env <- new.env()
for (name in sprintf("x%d", xs)) assign(name, 0, envir = env)
df <- data.frame(g = rep(1:3, each = 2L), v = xs)

## Each call takes the future arguments via '...', which is empty
## when the future options are passed via 'future.disposable'
calls <- list(
  future_lapply = function(...) {
    future_lapply(xs, FUN = function(x) runif(1), ...)
  },
  future_sapply = function(...) {
    future_sapply(xs, FUN = function(x) runif(1), ...)
  },
  future_vapply = function(...) {
    future_vapply(xs, FUN = function(x) runif(1), FUN.VALUE = NA_real_, ...)
  },
  future_mapply = function(...) {
    future_mapply(FUN = function(x) runif(1), xs, ...)
  },
  future_Map = function(...) {
    future_Map(function(x) runif(1), xs, ...)
  },
  future_apply = function(...) {
    future_apply(matrix(xs, nrow = 2L), MARGIN = 2L, FUN = function(x) runif(1), ...)
  },
  future_tapply = function(...) {
    future_tapply(xs, INDEX = xs, FUN = function(x) runif(1), ...)
  },
  future_eapply = function(...) {
    future_eapply(env, FUN = function(x) runif(1), ...)[sort(names(env))]
  },
  future_replicate = function(...) {
    future_replicate(length(xs), runif(1), ...)
  },
  ## Drop the 'call' attribute, which differs between the calls
  future_by = function(...) {
    y <- future_by(df, INDICES = df$g, FUN = function(d) runif(1), ...)
    as.vector(unlist(y))
  },
  future_Filter = function(...) {
    future_Filter(function(x) runif(1) > 0.5, 1:20, ...)
  },
  future_.mapply = function(...) {
    future_.mapply(function(x) runif(1), dots = list(xs), MoreArgs = NULL, ...)
  }
)

with_disposable_seed <- function(seed, expr, chunk.size = NULL) {
  opts <- list(seed = seed)
  if (!is.null(chunk.size)) opts$chunk.size <- chunk.size
  options(future.disposable = opts)
  on.exit(options(future.disposable = NULL))
  expr
}


## Reference results
plan(sequential)
truths <- list()
for (fcn_name in names(calls)) {
  call <- calls[[fcn_name]]
  set.seed(42)
  truth_TRUE <- call(future.seed = TRUE)
  truth_42 <- call(future.seed = 42L)
  stopifnot(!identical(truth_42, truth_TRUE))
  truths[[fcn_name]] <- list(`TRUE` = truth_TRUE, `42` = truth_42)
}
str(truths)


## Set up each backend once, and test all functions with it
for (cores in 1:availCores) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)

  for (strategy in supportedStrategies(cores)) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    for (fcn_name in names(calls)) {
      message(sprintf("  - %s() ...", fcn_name))
      call <- calls[[fcn_name]]
      truth_TRUE <- truths[[fcn_name]][["TRUE"]]
      truth_42 <- truths[[fcn_name]][["42"]]

      for (chunk.size in list(NULL, 1L, 4L)) {
        message(sprintf("    - chunk.size = %s ...",
                        if (is.null(chunk.size)) "NULL" else chunk.size))

        ## Argument 'future.seed'
        set.seed(42)
        y <- call(future.seed = TRUE, future.chunk.size = chunk.size)
        stopifnot(identical(y, truth_TRUE))

        y <- call(future.seed = 42L, future.chunk.size = chunk.size)
        stopifnot(identical(y, truth_42))

        ## Option 'future.disposable'
        set.seed(42)
        y <- with_disposable_seed(TRUE, chunk.size = chunk.size, call())
        stopifnot(identical(y, truth_TRUE))
        stopifnot(is.null(getOption("future.disposable")))

        y <- with_disposable_seed(42L, chunk.size = chunk.size, call())
        stopifnot(identical(y, truth_42))
        stopifnot(is.null(getOption("future.disposable")))
      } ## for (chunk.size ...)

      ## The %seed% operator of 'future' sets 'seed' via 'future.disposable'
      message("    - %seed% ...")
      set.seed(42)
      y <- call() %seed% TRUE
      stopifnot(identical(y, truth_TRUE))
      stopifnot(is.null(getOption("future.disposable")))

      y <- call() %seed% 42L
      stopifnot(identical(y, truth_42))
      stopifnot(is.null(getOption("future.disposable")))

      message(sprintf("  - %s() ... DONE", fcn_name))
    } ## for (fcn_name ...)

    plan(sequential)
    message(sprintf("- plan('%s') ... DONE", strategy))
  } ## for (strategy ...)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("- future.disposable on empty inputs ...")
options(future.disposable = structure(list(seed = 42), dispose = TRUE))
res <- future_apply(matrix(nrow = 0, ncol = 2), MARGIN = 1, FUN = identity)
stopifnot(is.null(getOption("future.disposable")))

options(future.disposable = structure(list(seed = 42), dispose = TRUE))
res <- future_mapply(identity, integer(0))
stopifnot(is.null(getOption("future.disposable")))

options(future.disposable = structure(list(seed = 42), dispose = TRUE))
res <- future_mapply(identity)
stopifnot(is.null(getOption("future.disposable")))

message("*** RNG with 'seed' via future.disposable ... DONE")
