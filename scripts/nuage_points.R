nuageDePoints <- function(v1,v2,titreV1,titreV2){

  
  # recuperation des valeurs maximum et minimum afin de délimiter le graphe
  
  maximumV1=max(v1)
  minimumV1=min(v1)
  
  maximumV2=max(v2)
  minimumV2=min(v2)
  
  
  # afficher le nuage de point
  
  plot(x = v1, y = v2,
       xlab = titreV1,
       ylab = titreV2,
       xlim = c(minimumV1, maximumV1),
       ylim = c(minimumV2,maximumV2)
  )
}

