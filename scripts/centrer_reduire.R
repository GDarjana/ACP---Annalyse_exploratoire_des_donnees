centrer_reduire <- function(dataset){
   matrice_centre_reduite <- apply(as.matrix(dataset), 2, function(x) (x-mean(x))/(sd(x)))
   return(matrice_centre_reduite)
}