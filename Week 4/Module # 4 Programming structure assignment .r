
##BLOG: https://masons-programming-journal.blogspot.com/2026/02/module4-programming-structure.html
# Set WD
setwd("/home/mase/Documents/LIS4370/Module 4")
################################################################################
# Dataset Key
# general doctor titled "first" (bad = 1, good = 0) 
# external doctor titled "second" (low = 0, high = 1)
# emergency unit's titled "finaldecision" (low = 0, high = 1)
################################################################################

# Load in DataSet in Vectors
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
Bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)  
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1) 
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)  

par(mfrow=c(1,4))

# First Assessment
boxplot(Bloodp ~ First, main="1st MD", col="lightblue", xlab="0=G, 1=B")

# Second Assessment
boxplot(Bloodp ~ Second, main="2nd MD", col="lightgreen", xlab="0=L, 1=H")

# Final Decision
boxplot(Bloodp ~ FinalDecision, main="Final", col="salmon", xlab="0=L, 1=H")

# Visit Frequency
hist(Freq, main="Visit Freq", col="grey", xlab="Frequency")
