## The function makecahematrix creates a matrix and several functions that go along with it

makeCacheMatrix <- function(x = matrix()) {
  c<- NULL
  set<- function(y) {
    x<<-y
  c<<-NULL
  }
get<- function() x
setinverse<- function(solve) c<<- solve
getinverse<- function() c
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}

## The function cacheSolve computes the inverse of a matrix and 
##if the matrix has not been changed then retrieves the cached 
##solution to save time 


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
c<- x$getinverse()
if(!is.null(c)){
    message("Get cached data")
    return(c)
}

data<- x$get()
c<- solve(data, ...)
x$setinverse(c)
}
