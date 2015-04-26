## Two functions makeCacheMatrix() and cacheSolve() that speed up
## the processing of matrix inversion by pulling the inverse from 
## cache if it exists

## MakeCachematrix is a constructor function that stores 3 functions 
## that are utilised by the cacheSolve function
makeCacheMatrix <- function(x = matrix()) {
  
  ## Clear the cached matrix first
  cache_inverse <- NULL
  
  ## function 1 to get the matrix
  get_matrix <- function() x
  
  ## function 2 to write the calculated values for the inverse matrix
  ## to the cache
  set_inverse <- function(answer) cache_inverse <<- answer
  
  ## function 3 to retrieve the cached values for the inverse matrix
  get_inverse <- function() cache_inverse
  
  ## list of 3 functions to be used by cacheSolve()  
  list(get_matrix = get_matrix, set_inverse = set_inverse,
       get_inverse = get_inverse)
}

## CacheSolve returns the inverse matrix from cache if present
## or calculates it and then stores it in the cache
cacheSolve <- function(x, ...) {
  
  ## Check to see if there is data in the cache  
  answer <- x$get_inverse()
  if(!is.null(answer)) {
    message("Getting cached data...")
    
    ## return the inverse matrix from cache if it exists 
    return(answer)
  }
  ## implicit Else - (i.e. Else no data in cache so caclulate it)
  data <- x$get_matrix()
  
  ## Calculate the inverse for the matrix 
  answer <- solve(data, ...)
  
  ## Write the inverse data to the cache
  x$set_inverse(answer)
  
  ## return the calculated inverse matrix
  answer
}