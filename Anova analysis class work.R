#Author:Kelechi, Date: 02/09/2023, Purpose: To perform anova analysis

#Load the library
library(dplyr)

#Load the dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Read cvs file
df <- read.csv(PATH)

df<-df[,2:4]

#Run ANOVA function
anova_one_way <- aov(time~poison, data = df)

anova_one_way

summary(anova_one_way)



