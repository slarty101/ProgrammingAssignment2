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
    ## set the values for the inverse matrix
    set_inverse <- function(solve) m <<- solve
    
    ## retrieve the cached values for the inverse matrix
    get_inverse <- function() m
    ## 
    list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
}