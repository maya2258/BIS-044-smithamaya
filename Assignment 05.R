# Load Packages 
library(data.table)
library(tidyverse)
library(stringr)

DF <- read.csv("USvidoes.csv")
attach(DF)

# Convert "trending_date" to an R date to an R date object
DF$trending_date <- as.Date(DF$trending_date, format="%y.%d.%m")

# Split "publish_time" into "PDate" and "PTime" columns, then convert each to date and time objects
DF <- DF %>% separate(col=publish_time,into=c("PDate", "PTime"), "T",extra="merge")
DF$PDate <- as.Date(DF$PDate) 

DF$PTime <- substr(DFSPTime,1,nchar(DF$Time)-5)
DF$PTime <- as.POSIXct(paste(DF$PDate, DF$PTime), format= "%Y-%m-%d %H:%M:%S")

#Capitalize first letter in every word of "title" and all other letters to lower case 
DF$title <- str_to_title(title)

#View resulting data frame
View (DF)
