## To be imported from 'future', if available
sQuoteLabel <- NULL
.debug <- NULL

make_rng_seeds <- import_future("make_rng_seeds")
next_random_seed <- import_future("next_random_seed")
set_random_seed <- import_future("set_random_seed")

## Import private functions from 'future'
import_future_functions <- function() {
  .debug <<- import_future(".debug", mode = "environment", default = new.env(parent = emptyenv()))

  ## future (>= 1.49.0)
  sQuoteLabel <<- import_future("sQuoteLabel")
}
