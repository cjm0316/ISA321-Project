library(tidyverse)
setwd("/Users/liamh/Documents/2018 - 2019/Fall Semester 2018 - 2019/ISA 321/Project")

wine <- read.csv("Project_Data.csv", na.strings = "", stringsAsFactors = F)
wine[,7] <- as.numeric(wine[,7])
wine <- na.omit(wine)

wine2 <- wine %>%
  filter(price <= 300)

wine2 <- wine2 %>%
  distinct(title, .keep_all = T)

wineTravelerItaly <- wine2 %>%
  filter(country == "Italy")

wineTravelerArgentina <- wine2 %>%
  filter(country == "Argentina")

wineSample <- sample_n(wine2, 300, replace = F)
write.csv(wineSample, file = "Project_Data_Sample.csv", row.names = F)

wineItaly <- sample_n(wineTravelerItaly, 300, replace = F)
write.csv(wineItaly, file = "Project_Data_Italy_Sample.csv", row.names = F)

wineArgentina <- sample_n(wineTravelerArgentina, 300, replace = F)
write.csv(wineArgentina, file = "Project_Data_Argentina_Sample.csv", row.names = F)
