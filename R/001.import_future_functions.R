## To be imported from 'future', if available
.debug <- NULL

## Import private functions from 'future'
import_future_functions <- function() {
  .debug <<- import_future(".debug", mode = "environment", default = new.env(parent = emptyenv()))
}
