cacheSolve <- function(x, ...) {
  m <- x$get_inverse()
  if(!is.null(m)) {
    message("Getting cached data...")
    return(m)
  }
  data <- x$get_inverse()
  m <- solve(data, ...)
  x$set_inverse(m)
  m
}