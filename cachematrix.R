## This function:
## sets the value of the matrix
## then gets the value of the matrix
## then sets the inverse of the matrix using solve
## then gets the inverse of the matrix
## makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(h) {
                x <<- h
                i <<- NULL
        }
        get <- function() x
        setinv <- function(solve) i <<- solve
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getnv)
}


## The second funtion:
## Firstly checks whether the inverse of the matrix has been calculated and
## gets this value. If the inverse has not been cached then it will calculate the inverse. 

cacheSolve <- function(x, ...) {
        i <- x$getinv()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)
        i
}
