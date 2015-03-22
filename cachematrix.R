## Below function calculate the inverse of a matrix and saves it
## This will help people to use the saved value instead of 
## repeating the calculation

## This function set and get the value of matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<- function(y) {
		x<<-y
		m<<- NULL
		}
		get<- function() x
		setinverse<_ function(inverse) m<< inverse
		getinverse<- function() m
		list(set= set, get= get,
		setinverse= setinverse
		getinverse= getinverse)
	}

}


## Below function calulates the inverse of matrix created
## above
## it first check if the inverse is already calculated or not 
## Otherwise it calculates matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getinverse()
        if(!is.null(m){
        	return(m)
        	}
        	data<- x$get()
        	m<- solve(data,...)
        	x$setinverse(m)
        	m
}
