if (require("datasets") && require("stats")) {
  library(future.apply)
  library(datasets)
  
  plan(multisession)
  
  ## Adopted from example("kernapply", package = "stats")

  ## ------------------------------------------------------
  ## Test {future_}kernapply() for 'default'
  ## ------------------------------------------------------
  X <- EuStockMarkets[, 1:2]
  X <- unclass(X)
  stopifnot(inherits(X, "matrix"), !inherits(X, "ts"))

  k1 <- kernel("daniell", m = 50L)
  stopifnot(inherits(k1, "tskernel"))
  X1_truth <- kernapply(X, k = k1)
  str(X1_truth)
  X1 <- future_kernapply(X, k = k1)
  str(X1)
  stopifnot(identical(X1, X1_truth))


  ## ------------------------------------------------------
  ## Test {future_}kernapply() for 'ts'
  ## ------------------------------------------------------
  X <- EuStockMarkets[, 1:2]
  stopifnot(inherits(X, "matrix"), inherits(X, "ts"))

  k1 <- kernel("daniell", m = 50L)
  stopifnot(inherits(k1, "tskernel"))
  X1_truth <- kernapply(X, k = k1)
  str(X1_truth)
  X1 <- future_kernapply(X, k = k1)
  str(X1)
  stopifnot(identical(X1, X1_truth))


  ## ------------------------------------------------------
  ## Test passing '...' arguments
  ## ------------------------------------------------------
  X1 <- future_kernapply(X, k = k1, future.chunk.size = 1, future.label = "custom_%d", future.seed = TRUE)
  stopifnot(identical(X1, X1_truth))

  ## ------------------------------------------------------
  ## Test vector input
  ## ------------------------------------------------------
  x <- EuStockMarkets[, 1]
  x_vec <- as.vector(x)
  y0_vec <- kernapply(x_vec, k = k1)
  y1_vec <- future_kernapply(x_vec, k = k1)
  stopifnot(identical(y1_vec, y0_vec))

  ## Vector input with future.* arguments
  y1_vec <- future_kernapply(x_vec, k = k1, future.chunk.size = 1, future.label = "custom_%d", future.seed = TRUE)
  stopifnot(identical(y1_vec, y0_vec))

  y0_ts <- kernapply(x, k = k1)
  y1_ts <- future_kernapply(x, k = k1)
  stopifnot(identical(y1_ts, y0_ts))

  ## ts vector input with future.* arguments
  y1_ts <- future_kernapply(x, k = k1, future.chunk.size = 1, future.label = "custom_%d", future.seed = TRUE)
  stopifnot(identical(y1_ts, y0_ts))

  plan(sequential)
}
