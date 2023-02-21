#Author: Kelechi, Date: 01/31/2023, Purpose: Correlation analysis
#Install external library
if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

#load the library
library("ggpubr") 

#Load sample dataset
my_data <- mtcars 

#plot the correlation value
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

#Just print the correlation value without plotting
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

#correlation value is = -0.87

