#Some computations require a lot of computer time so if you are making a code in which you need 
#to perform a several function of a certain vector, matrix, list, etc, you might save some time by using the previous computations.
#This computations are stored in the Cache memory, so I will create two functions in order to save time and effort to the computer.

#Defining the function makeCacheMatrix in order to:
#1) Set value of the matrix
#2) Get the value of the matrix
#3) Set the value of the matrix inverse
#4) Get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y 
m<<-NULL
}
get<-function() x
setinverse<-function(solve) m<<-solve
getinverse<- function() m
#The function will return a list with the defined functions of the function make.Matrix
list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


#Defining the function cacheSolve in order to:
#Compute the matrix inverse or check if it has already computed, and if so it gets the matrix inverse from the cache

cacheSolve <- function(x, ...) {
m<-x$getinverse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
matrix<-x$get()
m<-solve(matrix,...)
x$setinverse(m)
m
}


