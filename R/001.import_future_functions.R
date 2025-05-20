## To be imported from 'future', if available
.debug <- NULL

make_rng_seeds <- import_future("make_rng_seeds")
get_random_seed <- import_future("get_random_seed")
set_random_seed <- import_future("set_random_seed")
next_random_seed <- import_future("next_random_seed")
is_valid_random_seed <- import_future("is_valid_random_seed")
is_lecyer_cmrg_seed <- import_future("is_valid_random_seed")
as_lecyer_cmrg_seed <- import_future("as_lecyer_cmrg_seed")

## Import private functions from 'future'
import_future_functions <- function() {
  .debug <<- import_future(".debug", mode = "environment", default = new.env(parent = emptyenv()))

}
