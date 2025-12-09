# Changelog

## Version 1.20.1

### Bug Fixes

- `future_apply(..., future.globals = list(...))` would produce ‘Error
  in if (chunk_size \> maxSize) { : missing value where TRUE/FALSE
  needed’.

## Version 1.20.0

CRAN release: 2025-06-06

### Significant changes

- All **future.apply** functions will now cancel any remaining
  non-resolved futures if one of the futures produces an error, or a
  user interrupt (Ctrl-C) is detected. If the backend where the futures
  are running supports it, the canceled futures are also interrupted,
  which results in compute resources being freed up sooner and the
  **future.apply** function returning sooner.

### New Features

- Added
  [`future_Filter()`](https://future.apply.futureverse.org/reference/future_mapply.md),
  which is parallel version of
  [`base::Filter()`](https://rdrr.io/r/base/funprog.html).

- Added
  [`future_kernapply()`](https://future.apply.futureverse.org/reference/future_kernapply.md),
  which is parallel version of
  [`stats::kernapply()`](https://rdrr.io/r/stats/kernapply.html).

- Now **future.apply** lets **future** take care of the generation of
  parallel RNG seed. Consolidating random number generation to the core
  package will allow us to add central support for custom parallel RNG
  methods beyond the built-in L’Ecuyer-CMRG method.

### Deprecated and Defunct

- Specifying the function `FUN` for
  [`future_by()`](https://future.apply.futureverse.org/reference/future_by.md)
  as a character string is defunct. It should be specified as a
  function, e.g. `FUN = sqrt` and `` FUN = `[[` ``, which is what
  [`base::by()`](https://rdrr.io/r/base/by.html) requires. Use of a
  string has been deprecated since **future.apply** 1.10.0 (2022-11-04).

## Version 1.11.3

CRAN release: 2024-10-27

### Bug Fixes

- Use of `future.seed = TRUE` could result in an error
  `!any(seed_next != seed) is not TRUE` in rare cases.

## Version 1.11.2

CRAN release: 2024-03-28

### Miscellaneous

- Relaxed one unit test that triggered an error on 32-bit architectures.

## Version 1.11.1

CRAN release: 2023-12-21

### Bug Fixes

- Option `future.globals.maxSize` was never passed down to parallel
  workers.

- The assertion of argument `INDEX` of
  [`future_tapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
  would fail with another error in R (\< 3.6.0), if `INDEX` was
  incorrect in the first place.

## Version 1.11.0

CRAN release: 2023-05-21

### Significant Changes

- [`future_tapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
  now accepts data frames as input, just as
  [`tapply()`](https://rdrr.io/r/base/tapply.html) does in R (\>=
  4.3.0).

- In R (\>= 4.3.0), `future_tapply(X, INDEX, ...)` now accepts `INDEX`
  being a formula when `X` is a data frames, just as
  [`tapply()`](https://rdrr.io/r/base/tapply.html) does in R (\>=
  4.3.0). An error is produced if used in R (\< 4.3.0).

- In R (\>= 4.3.0), `future_by(X, INDICES, ...)` now accepts `INDICES`
  being a formula when `X` is a data frames, just as
  [`by()`](https://rdrr.io/r/base/by.html) does in R (\>= 4.3.0). An
  error is produced if used in R (\< 4.3.0).

### New Features

- Now **future** operators such as `%globals%`, `%seed%`, and `%stdout%`
  can be used to control the corresponding `future.*` arguments, e.g.
  `y <- future_lapply(1:3, FUN = my_fun) %seed% TRUE` is the same as
  `y <- future_lapply(1:3, FUN = my_fun, future.seed = TRUE)`.

### Bug Fixes

- Contrary to `lapply(X, ...)`, `future_lapply(X, ...)` failed to use
  method-specific `[[` subsetting, if the class of `X` implemented one.
  [`future_mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md)
  and other functions had the same problem. The reason was that when `X`
  is partitioned into chunks, it would lose the class attribute before
  subsetting with `[[`.

## Version 1.10.0

CRAN release: 2022-11-05

### Bug Fixes

- Functions
  [`future_eapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
  [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
  [`future_sapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
  and
  [`future_vapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
  failed if `FUN` was specified as the name of a function rather than
  the function object itself, e.g. `future_lapply(1:3, FUN = "sqrt")`.

### Deprecated and Defunct

- Specifying the function `FUN` for
  [`future_by()`](https://future.apply.futureverse.org/reference/future_by.md)
  as a character string is deprecated, because
  [`base::by()`](https://rdrr.io/r/base/by.html) does not support it. It
  should be specified as a function, e.g. `FUN = sqrt` and
  `` FUN = `[[` ``.

## Version 1.9.1

CRAN release: 2022-09-07

### Bug Fixes

- Some warnings and errors showed the wrong call.

### Miscellaneous

- Fix some HTML5 issues in help pages.

## Version 1.9.0

CRAN release: 2022-04-25

### Signficant Changes

- [`future_mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md)
  and
  [`future_Map()`](https://future.apply.futureverse.org/reference/future_mapply.md)
  was updated to match the new behavior of
  [`mapply()`](https://rdrr.io/r/base/mapply.html) and
  [`Map()`](https://rdrr.io/r/base/funprog.html) in R (\>= 4.2.0), which
  follows the “max-or-0-if-any” recycling rule.

### Performance

- Now captured standard output and conditions are deleted as soon as
  they have been relayed. This requires **future** (\>= 1.25.0).

### Deprecated and Defunct

- Removed moot argument `future.lazy` from all functions. Regardless of
  setting it to TRUE or FALSE, futures would be resolved momentarily and
  always before the apply returned.

## Version 1.8.1

CRAN release: 2021-08-10

### Bug Fixes

- [`citEntry()`](https://rdrr.io/r/utils/citEntry.html) in CITATION used
  argument `notes` instead of `note`.

## Version 1.8.0

### New Features

- Add argument `future.envir` to all `future_nnn()` functions, which is
  passed as argument `envir` to
  [`future()`](https://future.futureverse.org/reference/future.html).

- Add option `future.apply.debug` for debugging features specific to
  this package. It defaults to option `future.debug`.

### Performance

- Internal `getGlobalsAndPackagesXApply()` now avoids calculating the
  object size of `...` arguments if option `future.globals.maxSize` is
  +Inf.

### Bug Fixes

- `f <- function(...) future_lapply(X, function(x) list(...)); f(a=1)`
  would produce an error on ’unused argument (a = 1)” with the upcoming
  release of **future** 1.22.0.

## Version 1.7.0

CRAN release: 2021-01-04

### New Features

- The automatic capturing of conditions can be disabled by specifying
  `future.conditions = NULL`.

- Warnings and errors on using the RNG without specifying `future.seed`
  are now tailored to the **future.apply** package.

## Version 1.6.0

CRAN release: 2020-07-01

### Signficant Changes

- [`future_apply()`](https://future.apply.futureverse.org/reference/future_apply.md)
  gained argument `simplify`, which is added to R-devel (to become R
  4.1.0).

### Bug Fixes

- `future_apply(X, FUN, ...)` would pass all `future.*` arguments except
  `future.globals`, `future.packages`, and `future.labels` to the `FUN`
  function instead of processing them locally. This would often result
  in the `FUN` producing an error on “unused argument”. It also affected
  `future.seed` not being applied, which means for some `FUN` functions
  that did not produce this error, non-reproducible results could have
  been produced.

## Version 1.5.0

CRAN release: 2020-04-17

### New Features

- Add
  [`future_.mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md)
  corresponding to [`.mapply()`](https://rdrr.io/r/base/mapply.html) in
  the **base** package.

### Bug Fixes

- [`future_mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md)
  would chunk up `MoreArgs` when `future.seed = TRUE`.

## Version 1.4.0

CRAN release: 2020-01-07

### New Features

- Now all `future_nnn()` functions set a label on each future that
  reflects the name of the `future_nnn()` function and the index of the
  chunk, e.g. `"future_lapply-3"`. The format can be controlled by
  argument `future.label`.

### Performance

- The assertion of the maximum size of globals per chunk is now
  significantly faster for
  [`future_apply()`](https://future.apply.futureverse.org/reference/future_apply.md).

### Bug Fixes

- `future_lapply(X)` and `future_mapply(FUN, X)` would drop `names`
  argument of the returned empty list when `length(X) == 0`.

- Package could set `.Random.seed` to NULL, instead of removing it,
  which in turn would produce a warning on “‘.Random.seed’ is not an
  integer vector but of type ‘NULL’, so ignored” when the next random
  number generated.

## Version 1.3.0

CRAN release: 2019-06-18

### New Features

- Now `future.conditions` defaults to the same as argument `conditions`
  of
  [`future::future()`](https://future.futureverse.org/reference/future.html).
  If the latter changes, this package will follow.

- Debug messages are now prepended with a timestamp.

### Bug Fixes

- The error “sprintf(…) : ‘fmt’ length exceeds maximal format length
  8192” could be produced when debugging tried to report on too many
  globals.

## Version 1.2.0

CRAN release: 2019-03-07

### New Features

- Added
  [`future_by()`](https://future.apply.futureverse.org/reference/future_by.md).

### Bug Fixes

- Attributes `add` and `ignore` of argument `future.globals` were
  ignored although support for them was added in **future** (\>=
  1.10.0).

- Validation of L’Ecuyer-CMRG RNG seeds failed in recent R devel.

## Version 1.1.0

CRAN release: 2019-01-17

### Signficant Changes

- Added argument `future.stdout` and `future.conditions` for controlling
  whether standard output and conditions (e.g. messages and warnings)
  produced during the evaluation of futures should be captured and
  relayed or not. Standard output is guaranteed to be relayed in the
  same order as it would when using sequential processing. Analogously
  for conditions. However, standard output is always relayed before
  conditions. Errors are always relayed. Relaying of non-error
  conditions requires **future** (\>= 1.11.0).

### New Features

- Elements can be processed in random order by setting attribute
  `ordering` to `"random"` of argument `future.chunk.size` or
  `future.scheduling`,
  e.g. `future.chunk.size = structure(TRUE, ordering = "random")`. This
  can help improve load balancing in cases where there is a correlation
  between processing time and ordering of the elements. Note that the
  order of the returned values is not affected when randomizing the
  processing order.

- Swapped order of arguments `future.lazy` and `future.seed` to be
  consistent with ditto arguments of
  [`future::future()`](https://future.futureverse.org/reference/future.html).

## Version 1.0.1

CRAN release: 2018-08-26

### Documentation / Licence

- The license is GPL (\>= 2). Previously it was documented as GPL (\>=
  2.1) but that is a non-existing GPL version.

### Bug Fixes

- For list objects `X` where `X != as.list(X), future_lapply(X)` did not
  give the same result as `lapply(X)`. Analogously for
  `future_vapply(X)`.

- [`future_mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md)
  could drop class attribute on elements iterated over, because
  [`.subset()`](https://rdrr.io/r/base/base-internal.html) was used
  internally instead of
  [`` `[`() ``](https://rdrr.io/r/base/Extract.html). For instance,
  iteration over `Date` objects were affected.

## Version 1.0.0

CRAN release: 2018-06-20

### Signficant Changes

- License changed from LGPL (\>= 2.1) to GPL (\>= 2) to make sure it is
  compatible with the source code adopted from R base’s
  [`apply()`](https://rdrr.io/r/base/apply.html),
  [`Map()`](https://rdrr.io/r/base/funprog.html),
  [`replicate()`](https://rdrr.io/r/base/lapply.html),
  [`sapply()`](https://rdrr.io/r/base/lapply.html), and
  [`tapply()`](https://rdrr.io/r/base/tapply.html), which are all GPL
  (\>= 2).

### New Features

- Added
  [`future_apply()`](https://future.apply.futureverse.org/reference/future_apply.md),
  [`future_mapply()`](https://future.apply.futureverse.org/reference/future_mapply.md),
  and
  [`future_Map()`](https://future.apply.futureverse.org/reference/future_mapply.md).

- Added argument `future.chunk.size` as an alternative to argument
  `future.scheduling` for controlling the average number of elements
  processed per future (“chunk”). In R 3.5.0, the **parallel** package
  introduced argument `chunk.size`.

- The maximum total size of globals allowed (option
  `future.globals.maxSize`) per future (“chunk”) is now scaled up by the
  number of elements processed by the future (“chunk”) making the
  protection approximately invariant to the amount of chunking
  (arguments `future.scheduling` and `future.chunk.size`).

### Bug Fixes

- `future_lapply(X, ...)` did not search for globals in `X`.

- [`future_vapply()`](https://future.apply.futureverse.org/reference/future_lapply.md)
  did not return the same dimension names as
  [`vapply()`](https://rdrr.io/r/base/lapply.html) when `FUN.VALUE` had
  no names but `FUN(X[[1]])` had.

### Software Quality

- Test code coverage is 100%.

## Version 0.2.0

CRAN release: 2018-05-01

### New Features

- Added
  [`future_eapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
  [`future_tapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
  [`future_vapply()`](https://future.apply.futureverse.org/reference/future_lapply.md),
  and
  [`future_replicate()`](https://future.apply.futureverse.org/reference/future_lapply.md).

## Version 0.1.0

CRAN release: 2018-01-15

- Package submitted to CRAN.

## Version 0.0.3

### Documentation

- Vignette now covers the basics of the package and describes its role
  in the R package ecosystem together with a road map going forward.

### Software Quality

- Added more package tests. Code coverage is currently at 100%.

## Version 0.0.2

### Performance

- `future_lapply(x, ...)` is now much faster and more memory efficient
  for large `x` vectors because it uses internal
  [`fold()`](https://future.apply.futureverse.org/reference/fold.md)
  function that is more efficient (memory and speed) version of
  `base::Reduce(f, x)`, especially when `length(x)` is large.

## Version 0.0.0-9000

### New Features

- Added
  [`future_sapply()`](https://future.apply.futureverse.org/reference/future_lapply.md).

- Added
  [`future_lapply()`](https://future.apply.futureverse.org/reference/future_lapply.md) -
  originally from the **future** package.

- Created package.
