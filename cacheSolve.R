## Function designed to return the inverse of a matrix from cache
## to to calculate it
cacheSolve <- function(x, ...) {
    
    ## Check to see if there is data in the cache  
    m <- x$get_inverse()
    if(!is.null(m)) {
      message("Getting cached data...")
    
      ## return the inverse matrix from cache 
      return(m)
    }
    ## implicit Else - (i.e. Else no data in cache)
    data <- x$get_inverse()
  
    ## Calculate the inverse for the matrix 
    m <- solve(data, ...)
  
    ## Write the inverse data to the cache
    x$set_inverse(m)
  
    ## return the calculated inverse matrix
    m
}