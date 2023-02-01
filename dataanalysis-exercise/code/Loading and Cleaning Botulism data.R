#Loading packages 
library(readr)
library(tidyverse)

#Loading data into R
botulism <- read_csv("dataanalysis-exercise/rawdata/Botulism.csv")

#Exploring Botulism data
str(botulism)
summary(botulism)
class(botulism)
#Overall, the data loaded into R is fairly tidy

#Replacing "Unknowns" with NAs
botulism [botulism == "Unknown"] <- NA
str(botulism)

#Removing NAs from data set
botulism_na<-na.omit(botulism)


#Selecting data by state (CA and GA)
condensed_ca<- botulism_na %>% 
    subset(State== "California")
str(condensed_ca)

condensed_ga<- botulism_na %>% 
  subset(State== "Georgia")
