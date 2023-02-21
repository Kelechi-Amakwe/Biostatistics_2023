#Author: Kelechi, Date: 01/31/2023, Purpose: Correlation analysis

#Install external library
if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

#load the library
library("ggpubr") 

#Load sample dataset
my_data <- mtcars 

#plot the correlation value
ggscatter(my_data, x = "mpg", y = "disp", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Disp (cubic inches)")

#Just print the correlation value without plotting
res <- cor.test(my_data$disp, my_data$mpg, method = "pearson") 

#correlation value = -0.87
