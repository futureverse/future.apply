import_from <- function(name, mode = "function", default = NULL, package) {
  ns <- getNamespace(package)
  if (exists(name, mode = mode, envir = ns, inherits = FALSE)) {
    get(name, mode = mode, envir = ns, inherits = FALSE)
  } else if (!is.null(default)) {
    default
  } else {
    stop(sprintf("No such '%s' %s: %s()", package, mode, name))
  }
}

import_future <- function(name, mode = "function", default = NULL) {
  import_from(name, mode = mode, default = default, package = "future")
}

import_base <- function(name, mode = "function", default = NULL) {
  import_from(name, mode = mode, default = default, package = "base")
}
