setwd("D:/Univ/L4/Analyse exploratoire/ACP---Analyse-exploratoire-des-donn-es/scripts/")

source("generalist_cleaning.R")
source("centrer_reduire.R")
source("correlation.R")

Data <- read.csv("D:/Univ/L4/Analyse exploratoire/ACP---Analyse-exploratoire-des-donn-es/Car2DB_fra_cut.csv", sep = ";", encoding = "UTF-8", na.strings = c("", "NA", "#N/A", " "), dec = ",")
Data <- clean(Data)


using_data <- Data[c("cylindree_cm3", "puissance_de_moteur_ch", "longueur_mm", "largeur_mm", "poids_a_vide_kg", "vitesse_max_km_h")]

#comparaison de la fonction center réduire de R et de la notre
sub_scale <- scale(using_data)
sub_fonc <- centrer_reduire(using_data)

all_regression_simple(using_data)