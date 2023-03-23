#Author: Kelechi, Date: 03/23/2023, Purpose: To calculate T test

#Create new 2 variables x and y
x = rnorm(10)
y = rnorm(10)

#Plot X and y values
#Create sequence of points from -4.5 to 4.5
pts = seq(-4.5,4.5,length=100)

#Plotting using function plot
plot(pts,dt(pts,df=9),col='red',type='l')

#Overlaying a and y variables on this plot
lines(density(x), col='green')
lines(density(y), col='blue')

#Ttest function
ttest=t.test(x,y)
 Welch Two Sample t-test

data:  x and y
t = -1.0279, df = 16.365, p-value = 0.3189
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.4349204  0.4966284
sample estimates:
mean of x mean of y 
0.0182542 0.4874002 
