## Constructor function that stores 4 additional functions
## that cache a matrix inverse to memory to speed up processing
makeCacheMatrix <- function(x = matrix()) {
    
    ## Clear the cached matrix first
    cache_inverse <- NULL
    ## function to write the inverse matrix (i.e.set it)
    ##set <- function(y) {
      ## matrix object
      ##x <<- y
      ## object for the inverse matrix
      ##m <<- NULL
    ##}
    
    ## function to get the matrix
    get_matrix <- function() x
    
    ## function to write the calculated values for the inverse matrix
    ## to the cache
    set_inverse <- function(answer) cache_inverse <<- answer
    
    ## cache values for the inverse matrix
    get_inverse <- function() cache_inverse
    
    ## list of functions to be used by cacheSolve()  
    list(get_matrix = get_matrix, set_inverse = set_inverse,
         get_inverse = get_inverse)
}