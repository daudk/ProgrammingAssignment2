## A set of 2 functions. The first one called "makeCachematrix finds the inverse
## of a mtrix and stores it in the cache. The second one called 'cacheSolve'
## first checks to see if a inverse exists in the cache, if so it just uses it,
## if not then it recalculates the inverse.

## This function will calculate the inverse of a matrix and store it

makeCacheMatrix<-function(x=matrix()){
     inv <- NULL
     set <- function(y){
          x <<- y
          inv <<- NULL
     }
     get<-function() x
     setinv <- function (solve) inv <<- solve
     getinv<- function () inv
     list(set=set, get=get, setinv=setinv,getinv=getinv)
     
}


## This function either pulls the inverse of a matrix from cache and returns it,
## or if invere doesn't exit, it will calculate the inverse and return it.

cacheSolve <- function(x,...){
     inv <- x$getinv()
     if(!is.null(inv)){
          message("getting cached data")
          return (m)
     }
     data <- x$get()
     inv<-solve(data,...)
     x$setinv(inv)
     inv
}