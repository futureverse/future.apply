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


  plan(sequential)
}
