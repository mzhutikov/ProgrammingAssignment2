##Create a special "matrix", which is a list containing
## a function to
##   - set the value of the matrix
##   - get the value of the matrix
##   - set the value of the inverse matrix
##   - get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  cachedInverse <- NULL
  set <- function(y) {
    x <<- y
    cachedInverse <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) cachedInverse <<- inverse
  getInverse <- function() cachedInverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Function to calculate the inverse of a matrix if it is not already calculated , returns cached inverse matrix if it is already calculated.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
invFunc <- x$getInverse()
if(!is.null(invFunc)) {
message("getting cached data")
return(invFunc)
}
data <- x$get()
invFunc <- solve(data, ...)
x$setInverse(invFunc)
invFunc
}cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
