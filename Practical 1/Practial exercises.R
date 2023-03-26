# Practical exercises [Par 1]
# Q1
a<-rep(1,10)
b<-1:10
c(a,b)
a+b
a+2*b
a/b
d<-c(3,5,3,6,8,5,4,6,7)
d[2:4]
d<7
d[d<7]

# Q2
vector1 =  c (5, 10, 15,20)
vector2 =  c (25, 30, 35, 40, 45, 50,55,60)
final = array (c (array1, array2),dim =c(4,4,3))
print (final)

# Q3
a <- sort(sample(1:500, 100))
b <- rpois(100, 25)
c <- rnorm(100, 10, 20)
x <- runif(n = 100, min = 10, max = 150)
grp <- rep(letters[1:2], length.out = 100)

df <- data.frame(a, b, c, x)          # data frame

#(a) summarise data
summary(df$a)
sd(df$a) # standard deviation
# repeat for other variables

# (b) explore several graphical options using the codes that I taught you during the lecture.


# [Part 2]
# stored data frame [https://www.statmethods.net/graphs/scatterplot.html]
mtcars
head(mtcars)

# histogram
hist(mtcars$mpg)
# Colored Histogram with Different Number of Bins
hist(mtcars$mpg, breaks=12, col="red")

# Kernel Density Plot
d <- density(mtcars$mpg) # returns the density data
plot(d) # plots the results
# Filled Density Plot
d <- density(mtcars$mpg)
plot(d, main="Kernel Density of Miles Per Gallon")
polygon(d, col="red", border="blue")

# Boxplot of MPG by Car Cylinders
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",
        xlab="Number of Cylinders", ylab="Miles Per Gallon")

# Simple Scatterplot
attach(mtcars)
plot(wt, mpg, main="Scatterplot Example",
     xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)
# Add fit lines
abline(lm(mpg~wt), col="red") # regression line (y~x)
lines(lowess(wt,mpg), col="blue") # lowess line (x,y)
# Enhanced Scatterplot of MPG vs. Weight
# by Number of Car Cylinders
library(car)
scatterplot(mpg ~ wt | cyl, data=mtcars,
            xlab="Weight of Car", ylab="Miles Per Gallon",
            main="Enhanced Scatter Plot",
            labels=row.names(mtcars))

# bar plot
counts <- table(mtcars$gear)
barplot(counts, xlab="Number of Gears")

# Grouped Bar Plot
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)

# Pie Chart from data frame with Appended Sample Sizes
mytable <- table(mtcars$gear)
transform(mytable, Rel_Freq=prop.table(Freq))
pie(mytable)


# [Part 3]
# Import data and follow same rules as in the part 2
