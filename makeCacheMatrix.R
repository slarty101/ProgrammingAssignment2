## Constructor function that stores 3 functions that cache
## a matrix inverse to memory to speed up processing
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