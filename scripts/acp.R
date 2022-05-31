library(FactoMineR)
library(factoextra)

ACP <- function(dataset){
  res <- PCA(dataset, graph = FALSE)
  print(fviz_eig(res, addlabels = TRUE))
  return(res)
}