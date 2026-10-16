#' @tags makeChunks

library(future.apply)

makeChunks <- future.apply:::makeChunks

message("*** makeChunks() ...")

message("- nbrOfElements = 0")

for (nbrOfWorkers in 1:4) {
  chunks <- makeChunks(0L, nbrOfWorkers = nbrOfWorkers)
  stopifnot(identical(chunks, list()))

  chunks <- makeChunks(0L, nbrOfWorkers = nbrOfWorkers, future.chunk.size = 2L)
  stopifnot(identical(chunks, list()))

  for (future.scheduling in list(FALSE, TRUE, 0, 0.5, 1.0, 2.0)) {
    chunks <- makeChunks(0L, nbrOfWorkers = nbrOfWorkers, future.scheduling = future.scheduling)
    stopifnot(identical(chunks, list()))
  }
}

for (nbrOfElements in c(1L, 2L, 8L)) {
  for (nbrOfWorkers in seq_len(nbrOfElements + 1L)) {
    ## Defaults
    chunks <- makeChunks(nbrOfElements, nbrOfWorkers = nbrOfWorkers)
    str(chunks)
    idxs <- unlist(chunks, use.names = TRUE)
    str(idxs)
    stopifnot(length(idxs) == nbrOfElements)
    uidxs <- unique(idxs)
    stopifnot(length(uidxs) == nbrOfElements)
    nidxs <- vapply(idxs, FUN = length, FUN.VALUE = 0L)
    str(nidxs)
    stopifnot(all(nidxs >= 1))
    stopifnot(length(chunks) <= nbrOfWorkers)

    orderings <- list(
      NULL,
      "random",
      seq_len(nbrOfElements),
      function(n) rev(seq_len(n))
    )

    for (ordering in orderings) {
      ## future.chunk.size
      for (future.chunk.size in seq_len(nbrOfElements + 1L)) {
        if (!is.null(ordering)) attr(future.chunk.size, "ordering") <- ordering
        chunks <- makeChunks(nbrOfElements, nbrOfWorkers = nbrOfWorkers,
                             future.chunk.size = future.chunk.size)
        str(chunks)
        idxs <- unlist(chunks, use.names = TRUE)
        str(idxs)
        stopifnot(length(idxs) == nbrOfElements)
        uidxs <- unique(idxs)
        stopifnot(length(uidxs) == nbrOfElements)
        nidxs <- vapply(idxs, FUN = length, FUN.VALUE = 0L)
        str(nidxs)
        stopifnot(all(nidxs >= 1), all(nidxs <= future.chunk.size))
      }
    
      ## future.scheduling
      for (future.scheduling in list(FALSE, TRUE, 0, 0.01, 0.5, 1.0, 2.0, +Inf)) {
        if (!is.null(ordering)) attr(future.scheduling, "ordering") <- ordering
        chunks <- makeChunks(nbrOfElements, nbrOfWorkers = nbrOfWorkers,
                             future.scheduling = future.scheduling)
        str(chunks)
        idxs <- unlist(chunks, use.names = TRUE)
        str(idxs)
        stopifnot(length(idxs) == nbrOfElements)
        uidxs <- unique(idxs)
        stopifnot(length(uidxs) == nbrOfElements)
        nidxs <- vapply(idxs, FUN = length, FUN.VALUE = 0L)
        str(nidxs)
        stopifnot(all(nidxs >= 1))
      }
    } ## for (ordering ...)
  }
}


message("- future.chunk.size < 1 gives no empty chunks")

for (nbrOfElements in c(1L, 2L, 8L)) {
  for (future.chunk.size in c(0.01, 0.5, 0.99)) {
    chunks <- makeChunks(nbrOfElements, nbrOfWorkers = 2L,
                         future.chunk.size = future.chunk.size)
    str(chunks)
    stopifnot(length(chunks) == nbrOfElements)
    nidxs <- vapply(chunks, FUN = length, FUN.VALUE = 0L)
    stopifnot(all(nidxs == 1L))
  }
}

plan(sequential)
res <- future_lapply(1:3, FUN = identity, future.chunk.size = 0.5, future.seed = TRUE)
stopifnot(identical(res, as.list(1:3)))


message("- Exceptions")

opt <- TRUE
attr(opt, "ordering") <- "unknown"
res <- tryCatch({
  makeChunks(3L, nbrOfWorkers = 2L, future.chunk.size = opt)
}, error = identity)
str(res)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  makeChunks(3L, nbrOfWorkers = 2L, future.scheduling = opt)
}, error = identity)
str(res)
stopifnot(inherits(res, "error"))

message("*** makeChunks() ... DONE")
