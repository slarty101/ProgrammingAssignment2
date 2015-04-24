## Constructor function to cache a matrix inverse to memory 
## to speed up processing
makeCacheMatrix <- function(x = matrix(1:4,2,2)) {
    
    ## Clear the object first
    m <- NULL
    ## Create another object to write the inverse matrix to (i.e.set it)
    set <- function(y) {
      ## matrix object
      x <<- y
      ## object for the inverse matrix
      m <<- NULL
    }
    get <- function() x
    
    ## calculate the values for the inverse matrix
    set_inverse <- function(solve) m <<- solve
    
    ## cache values for the inverse matrix
    get_inverse <- function() m
    
    ## list of functions to be used by cacheSolve()  
    list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
}