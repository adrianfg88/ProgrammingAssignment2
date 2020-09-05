## Este codigo sirve para calcular la inversa de una matriz y cuando esta ya existe no la vuelve a clacular sino que la saca del cache.

## esta funcion crea una lista en la que se guarda la matriz y guarda en un output tipo lista 4 valores-funciones

makeCacheMatrix <- function(x = matrix()) {
     inversa<-NULL #hace cero el valor de la inversa
     
     setMatrix<-function(p){ #esta es una funcion q va a ser un output, cuado el usuario cambie la matriz este output se cambiara
          x<<-p #cambia l matriz
          inversa <<-NULL #hace cero el valor de la inversa para tener una referencia de q como cambio la matriz la inversa igual
          
     }
     
     getMatrix<- function() x #output de la matriz
     
     getInverse<- function () inversa #output de la inversa
     
     setInverse<- function (inv_x) inversa<<-inv_x #output para volver a registrar una nueva inversa en caso de cambio de matriz
     
     list(setMatrix=setMatrix,getMatrix=getMatrix,setInverse=setInverse, getInverse=getInverse) #la lista de salida
     
}


## Esta funcion alcula la inversa y si ya existe solo la saca del cache

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     if(is.null( x$getInverse())){
          m<-solve(x$getMatrix())
          x$setInverse(m)
     }
     else{
          message("Ya exisitiamos compare...")
          m<<-x$getInverse () 
          
     }
     m
     
}
