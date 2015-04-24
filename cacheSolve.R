## Function designed to return the inverse of a matrix 
##
cacheSolve <- function(x, ...) {
  
  ## Check to see if there is data in the cache  
  m <- x$get_inverse()
  if(!is.null(m)) {
    message("Getting cached data...")
    return(m)
  }
  data <- x$get_inverse()
  
  ## Create the inverse for the data 
  m <- solve(data, ...)
  
  ## Write the inverse data to the cache
  x$set_inverse(m)
  m
}