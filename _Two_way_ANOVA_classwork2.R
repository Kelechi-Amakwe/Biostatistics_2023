#Author:Kelechi, Date: 02/09/2023, Purpose: To perform anova analysis

#Load the library
library(dplyr)

#Load the dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Read cvs file
df <- read.csv(PATH)

Specifically choose colunm 2:4
df<-df[,2:4]

#Run ANOVA function
anova_one_way <- aov(time~poison, data = df)

anova_one_way

summary(anova_one_way)

#F value = 20.67, this means it is a significant

#P value = 3.96e-05,this means that it is a significant value

#Run Two-way ANOVA function

anova_two_way <-aov(time~poison+treat, data=df)

summary(anova_two_way)

#F value = 34.77, this means it is a significant value

#P value = 5.17e-19e, this means it is a significant value
