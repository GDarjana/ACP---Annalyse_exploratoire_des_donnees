nuageDePoints <- function(var1,var2,titreV1,titreV2){

  
  # recuperation des valeurs maximum et minimum afin de délimiter le graphe
  
  maximumV1=max(var1)
  minimumV1=min(var1)
  
  maximumV2=max(var2)
  minimumV2=min(var2)
  
  
  # afficher le nuage de point
  
  plot(x = var1, y = var2,
       xlab = titreV1,
       ylab = titreV2
  )
}

all_regression_simple <- function(dataset){
  for (i in colnames(dataset)){
    for (j in colnames(dataset)){
      if(i!=j){
        reg <- lm(dataset[[i]] ~ dataset[[j]], dataset)
        nuageDePoints(dataset[[j]], dataset[[i]], j, i)
        abline(reg, col = 'red')
        print(paste("equation de la droite :", round(coef(reg)[[1]], 2), "+", round(coef(reg)[[2]],2), "*", j, "+", round(sigma(reg),2)))
        print(paste("coefficient de determination : ", round(summary(reg)$r.squared, 3)))
      }
    }
  }
}

