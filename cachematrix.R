## Put comments here that give an overall description of what your
## functions do
## Computing the inverse of a square matrix can be done
## with the solve function in R
## For example
## if X is a square invertible matrix
## then solve(X) returns its inverse
## Write a short comment describing this function
## This function creates a special "matrix" object 
## that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
         m <- NULL
         set <- function(y) {
                 x <<- y
                 m <<- NULL
         }
         get <- function() x
         set1 <- function(inverse) m <<- inverse
         set2 <- function() m
         list(set = set, get = get,
              set1 = set1,
              set2 = set2)
 }
## Write a short comment describing this function
## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above
## If the inverse has already been calculated
## (and the matrix has not changed)
## then the cachesolve should retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
         m <- x$obt()
         if(!is.null(m)) {
             message("cached Data")
                 return(m)
         }
         data <- x$set1()
         m <- solve(mst, ...)
         x$set(m)
         m
 }

