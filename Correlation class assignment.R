#Author: Kelechi, Date: 02/07/2023, Purpose: Correlation class assignment

#Load dataset
data <- read.csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")

#run correlation test without plotting fips ans case
res <- cor.test(data$fips, data$case, method = "pearson")

#Print the correlation test
res
#value= -0.1449438

#Run the correlation value without plotting fips and deaths
res <- cor.test(data$fips, data$deaths, method = "pearson")

#Print the test
res
Value = -0.1650371