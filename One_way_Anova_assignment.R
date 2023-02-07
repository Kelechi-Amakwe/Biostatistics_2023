#Author: Kelechi, Date: 02/04/2023, Purpose: Anova test

#Load the library
library(dplyr)
 
#Load the cvs dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Read the cvs dataset
read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE)) 

#Glimpse df
glimpse(df)

#Check for the format of the variables levels
levels(df$poison)

#Compute the mean and standard deviation
df % > % 
group_by(poison) % > % 
summarise(
count_poison = n(), 
mean_time = mean(time, na.rm = TRUE), 
sd_time = sd(time, na.rm = TRUE) 
)

#Plot the graph
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

#Run the anova
anova_one_way <- aov(time~poison, data = df) 

#Run the summary
summary(anova_one_way)
