# Options used for future.apply

Below are the R options and environment variables that are used by the
future.apply package and packages enhancing it.  
  
*WARNING: Note that the names and the default values of these options
may change in future versions of the package. Please use with care until
further notice.*

## Details

For settings specific to the future package, see
[future::future.options](https://future.futureverse.org/reference/zzz-future.options.html)
page.

## Options for debugging future.apply

- future.apply.debug::

  (logical) If `TRUE`, extensive debug messages are generated. (Default:
  `FALSE`)

## Environment variables that set R options

All of the above R future.apply.\* options can be set by corresponding
environment variable `R_FUTURE_APPLY_*` *when the future.apply package
is loaded*. For example, if `R_FUTURE_APPLY_DEBUG=TRUE`, then option
future.apply.debug is set to `TRUE` (logical).

## See also

To set R options or environment variables when R starts (even before the
future package is loaded), see the
[Startup](https://rdrr.io/r/base/Startup.html) help page. The
[startup](https://cran.r-project.org/package=startup) package provides a
friendly mechanism for configuring R's startup process.

## Examples

``` r
if (FALSE) { # \dontrun{
options(future.apply.debug = TRUE)
} # }
```
