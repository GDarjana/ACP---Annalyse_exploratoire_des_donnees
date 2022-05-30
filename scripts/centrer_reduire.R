centrer_reduire <- function(dataset){
   matrice_centre_reduite <- apply(as.matrix(dataset), 2, function(x) (x-mean(x))/sqrt(sum((x - mean(x))^2) / (length(x) - 1)))
   return(matrice_centre_reduite)
}