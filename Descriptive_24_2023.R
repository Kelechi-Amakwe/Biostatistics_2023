# Author: Kelechi. Date: Jan 24, 2023, Purpose: Functions for descriptive statistics
# Function for calculatiing mean
list <-c(1,2,3,4,5,2)

mean(list)
# Function to calculate standard deviation
sd(list)
# function to calculate median
median(list)
# function to calcultae mode
my_mode <- function(x) {                     # Create mode function 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}
my_mode(list)