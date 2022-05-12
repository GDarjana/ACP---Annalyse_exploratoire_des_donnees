library(janitor)
library(dplyr)

clean_colname <- function(dataset){
  return(clean_names(dataset))
}

clean_na <- function(dataset){
  liste_nom_col = c()
  
  #supprime les colonne contenant plus de 300 valeurs manquantes (300 étant un nombre choisi arbitrairement)
  for(i in 1:length(dataset)){
    if(sum(is.na(dataset[i])) > 300){
      liste_nom_col <- c(liste_nom_col, names(dataset[i]))
    }
  }
  
  dataset <- dataset[, ! names(dataset) %in% liste_nom_col, drop = F]
  dataset <- na.exclude(dataset)
  
  return(dataset)
}

clean <- function(dataset){
  dataset <- clean_colname(dataset)
  dataset <- clean_na(dataset)
  return(dataset)
}


  