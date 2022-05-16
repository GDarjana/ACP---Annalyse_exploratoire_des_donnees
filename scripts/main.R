setwd("D:/Univ/L4/Analyse exploratoire/ACP---Analyse-exploratoire-des-donn-es/scripts/")

source("generalist_cleaning.R")
source("centrer_reduire.R")

Data <- read.csv("D:/Univ/L4/Analyse exploratoire/ACP---Analyse-exploratoire-des-donn-es/Car2DB_fra_cut.csv", sep = ";", encoding = "UTF-8", na.strings = c("", "NA", "#N/A", " "), dec = ",")
Data <- clean(Data)

sub <- Data[c("cylindree_cm3", "puissance_de_moteur_ch", "longueur_mm", "largeur_mm", "poids_a_vide_kg", "vitesse_max_km_h")]

sub_scale <- scale(sub)

sub_fonc <- centrer_reduire(sub)