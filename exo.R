library("FactoMineR")
options(ggrepel.max.overlaps = Inf)

Data <- read.csv("D:/Univ/L4/Analyse exploratoire/ACP/Car2DB_fra_cut.csv", sep = ";", encoding = "UTF-8", na.strings = c("", "NA", "#N/A", " "))

colnames(Data) = Data[1,]
Data = Data[-1,]

liste_nom_col = c()

for(i in 1:length(Data)){
  if(sum(is.na(Data[i])) > 300){
    liste_nom_col <- c(liste_nom_col, names(Data[i]))
  }
}

Data <- Data[, ! names(Data) %in% liste_nom_col, drop = F]

Data <- na.exclude(Data)

Data$`Consommation route sur 100 km [l]` <- gsub(",", ".", Data$`Consommation route sur 100 km [l]`)
Data$`Accélération (0-100 km/h) [seconde]` <- gsub(",", ".", Data$`Accélération (0-100 km/h) [seconde]`)
Data$`Consommation mixte sur 100 km [l]` <- gsub(",", ".", Data$`Consommation mixte sur 100 km [l]`)
Data$`Consommation urbaine sur 100 km [l]` <- gsub(",", ".", Data$`Consommation urbaine sur 100 km [l]`)
Data$`Couple maximal [N*m]` <- gsub(",", ".", Data$`Couple maximal [N*m]`)

var_quali = c(10:20, 22, 23, 25, 28, 29, 33, 35, 36, 37, 38, 40, 41)
for(i in 1:length(var_quali)){
  Data[var_quali[i]] <- sapply(Data[var_quali[i]], as.numeric)
}

res = PCA(Data[var_quali])

#Data = na.exclude(Data)