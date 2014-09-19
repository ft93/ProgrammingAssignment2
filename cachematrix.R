## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The makeCacheMatrix function will create a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  setMatrix <- function(y){
    x <<- y
    inver <<- NULL
  }
  get <- function() x
  setinver <- function(inverse) inv <<- inverse
  getinver <- function() inv
  list(setMatrix=setMatrix, get=get, setinver=setinver, getinver=getinver)
}


## Write a short comment describing this function
## cacheSolve function will calculate the inverse of the matrix.
## before doing the calculation, it will check whether the inverse has already been computed
## if so, it will get the result, else it will compute the value in a cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inver <- x$getinver()
  if(!is.null(inv)){
    message("Retrieving data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinver(inv)
  inv
}
