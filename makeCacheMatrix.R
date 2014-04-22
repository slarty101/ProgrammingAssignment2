makeCacheMatrix <- function(x = matrix(1:4,2,2)) {
  m <- NULL
  set_inverse <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  solve <- function(solve) m <<- solve
  get_inverse <- function() m
  list(set_inverse = set_inverse, get_inverse = get_inverse,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}