# Blog: https://masons-programming-journal.blogspot.com/2026/03/the-3-levels-of-graphing-in-r.html
library(lattice)
library(ggplot2)

# Load the Data (US Gasoline Market Data (1950-1987, Baltagi))
gas <- read.csv("USGasG.csv")
str(gas)
head(gas)

# Base R Graph
plot(gas$income, gas$gas,
     main = "Gas Consumption Vs. Income",
     xlab = "Income",
     ylab = "Gas Consumption")

hist(gas$gas,
     main = "Income",
     xlab = "Income")

# Lattice
xyplot(gas ~ income, data = gas,
       xlab = "Income",
       ylab = "Gas Consumption", 
       main = "Gas Consumption vs Income")

# GGplot
gas$price_category <- cut(gas$price, 
                          breaks = 3, 
                          labels = c("Low", "Medium", "High"))

ggplot(gas, aes(x = income, y = gas, color = price_category)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth(method = "lm") +
  labs(title = "Gas Consumption vs Income",
       x = "Income",
       y = "Gas Consumption",
       color = "Gas Price")
