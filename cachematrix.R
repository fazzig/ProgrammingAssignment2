## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  f <- NULL
  set <- function(y) {
    x <<- y
    f <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) f <<- inv
  getinverse <- function() f
  list(
    set = set,get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  f <- x$getinverse()
  if(!is.null(f)) {
    message("getting cached data")
    return(f)
  }
  m <- x$get()
  f <- solve(m, ...)
  x$setinverse(f)
  f ## Return a matrix that is the inverse of 'x'
}
