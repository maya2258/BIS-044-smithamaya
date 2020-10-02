# Load data file 
load("prrace08.rda")

# Define Obama and McCain
Obama <- 0
McCain <- 0

# Number of rows in prrace08
n <- length(prrace08$state)

#Awarding electoral votes 
for (i in 1:n) {
  if(prrace08$p_obama[i] > prrace08p_mc_cain[i]) {
Obama <- Obama +prrace08$el_votes[i]
} else {
   McCain <- McCain + prrace08$el_votes[i]

}
  
  # Nebraska electoral split
  Obama <- Obama + 1 
  McCain <- McCain -1 
  
  #Print results
  cat("Obama:", Obama, "\nMcCain:", McCain)
  