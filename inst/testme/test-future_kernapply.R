if (require("datasets") && require("stats")) {
  library(future.apply)
  
  plan(multisession)
  
  ## Adopted from example("kernapply", package = "stats")
  
  x <- EuStockMarkets[,1]
  
  k1 <- kernel("daniell", m = 50L)
  x1_truth <- kernapply(x, k = k1)
  str(x1_truth)
  x1 <- future_kernapply(x, k = k1)
  str(x1)
  stopifnot(identical(x1, x1_truth))
  
  k2 <- kernel("daniell", m = 10L)
  x2_truth <- kernapply(x, k = k2)
  str(x2_truth)
  x2 <- future_kernapply(x, k = k2)
  str(x2)
  stopifnot(identical(x2, x2_truth))
  
  plan(sequential)
}
