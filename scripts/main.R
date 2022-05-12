setwd("D:/Univ/L4/Analyse exploratoire/ACP/scripts")

source("generalist_cleaning.R")

Data <- read.csv("D:/Univ/L4/Analyse exploratoire/ACP/Car2DB_fra_cut.csv", sep = ";", encoding = "UTF-8", na.strings = c("", "NA", "#N/A", " "), dec = ",")
Data <- clean(Data)
