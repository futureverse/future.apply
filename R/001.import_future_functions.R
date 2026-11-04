## Private functions imported from 'future'
make_rng_seeds <- import_future("make_rng_seeds")
next_random_seed <- import_future("next_random_seed")
set_random_seed <- import_future("set_random_seed")
objectSize <- import_future("objectSize")
asIEC <- import_future("asIEC")
sQuoteLabel <- import_future("sQuoteLabel")

## An environment must be imported when the package is loaded, otherwise
## we would get a copy and not share the state with 'future'
.debug <- NULL

import_future_functions <- function() {
  .debug <<- import_future(".debug", mode = "environment")
}
