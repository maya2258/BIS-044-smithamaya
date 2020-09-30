# data frames 
x <- 10:1
y <- -4:5 
z <- c('Hockey', 'Football', 'Curling', 'Soccer', 'Rugby','Baseball', 'Golf','Basketball', 'Wrestling', 'Tennis')
theDF <- data.frame (x,y,z)
theDF
# Rename data frame columns
names(theDF)<-c("Popularity", "Team Strength", "Sport")

#Print sum of integers in Popularity 
sum(theDF$Popularity)
