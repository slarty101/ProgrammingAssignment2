## Function designed to return the inverse of a matrix from cache
## or to calculate it
cacheSolve <- function(x, ...) {
    
    ## Check to see if there is data in the cache  
    answer <- x$get_inverse()
    if(!is.null(answer)) {
      message("Getting cached data...")
    
      ## return the inverse matrix from cache 
      return(answer)
    }
    ## implicit Else - (i.e. Else no data in cache)
    data <- x$get_matrix()
  
    ## Calculate the inverse for the matrix 
    answer <- solve(data, ...)
  
    ## Write the inverse data to the cache
    x$set_inverse(answer)
  
    ## return the calculated inverse matrix
    answer
}