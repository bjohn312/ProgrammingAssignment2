## Below are 2 functions
## makeCacheMatrix creates a matrix then finds the inverse 
## then caches that inverse value
## cacheSolve retrieves that cached value 

## This is makeCacheMatrix referenced in greater detail above

makeCacheMatrix <- function(x = matrix()) {
    m = NULL
    set <- fuctinon(y) {
        x <<- y
        m <<- NULL
}
    get <- function() x 
        findinverse <- function(solve) m <<- solve
        getinverse <- function () m 
        list (set = set, get = get
              findinverse = findinverse, getinverse = getinverse)
}

## This is cacheSolve referenced in greater detail above

cacheSolve <- function(x, ...) {
    m <- x$getinverse
    if(!is.null(m))  {
        message ("fetching cached data")
        return(m)
    }
    data <- x$get()
        m <- solve(data, ...)
        x$findinverse(m)
        m
}
