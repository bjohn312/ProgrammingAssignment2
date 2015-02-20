## Below are 2 functions
## makeCacheMatrix creates a matrix then finds the inverse 
## then caches that inverse value
## cacheSolve retrieves that cached value 

## This is makeCacheMatrix referenced in greater detail above

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    get<-function() x
    setmatrix<-function(solve) m<<- solve
    getmatrix<-function() m
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
}

## This is cacheSolve referenced in greater detail above

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
        message("fetching cached data")
        return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
