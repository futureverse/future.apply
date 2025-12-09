# Create Chunks of Index Vectors

*This is an internal function.*

## Usage

``` r
makeChunks(
  nbrOfElements,
  nbrOfWorkers,
  future.scheduling = 1,
  future.chunk.size = NULL
)
```

## Arguments

- nbrOfElements:

  (integer) Total number of elements to iterate over.

- nbrOfWorkers:

  (integer) Number of workers available.

- future.scheduling:

  (numeric) A strictly positive scalar. Only used if argument
  `future.chunk.size` is `NULL`.

- future.chunk.size:

  (numeric) The maximum number of elements per chunk, or `NULL`. If
  `NULL`, then the chunk sizes are given by the `future.scheduling`
  argument.

## Value

A list of chunks, where each chunk is an integer vector of unique
indices `[1, nbrOfElements]`. The union of all chunks holds
`nbrOfElements` elements and equals `1:nbrOfElements`. If
`nbrOfElements == 0`, then an empty list is returned.

## Control processing order of elements

Attribute `ordering` of `future.chunk.size` or `future.scheduling` can
be used to control the ordering the elements are iterated over, which
only affects the processing order *not* the order values are returned.
This attribute can take the following values:

- index vector - an numeric vector of length `nbrOfElements` specifying
  how elements are remapped

- function - an function taking one argument which is called as
  `ordering(nbrOfElements)` and which must return an index vector of
  length `nbrOfElements`, e.g. `function(n) rev(seq_len(n))` for reverse
  ordering.

- `"random"` - this will randomize the ordering via random index vector
  `sample.int(nbrOfElements)`.
