## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(solve) in <<- solve
getinverse <- function() in
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  in <- x$getinverse()
  if(!is.null(in)) {
    message("getting cached data")
    return(in)
  }
  data <- x$get()
  in <- solve(data, ...)
  x$setinverse(in)
  in
}
