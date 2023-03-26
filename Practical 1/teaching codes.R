## Teaching

# data frame
num = c(2, 3, 5, 8, 13, 16) 
sub = c("aa", "bb", "cc", "aa", "bb", "cc") 
bat = c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE) 
df = data.frame(num, sub, bat)       # df is a data frame
head(df)

# stored data frame
mtcars
head(mtcars)                  # remember this data frame

# importing data
# These are the measures of antibody titres taken for a number 
# of women who had been infected with chicken pox as a child 
# (under 10 years of age). Their age groups are also given. 
library(readxl)
sample <- read_excel("C:/Users/prf49/OneDrive - University of Keele/KEELE TEACHING/Statistical Techniques for Data Analytics/Data science R practical/sample.xlsx")
View(sample)
head(sample)

# calculate summary statistics
summary(sample$titres, data = sample)

# histogram
hist(sample$titres, data = sample)

# create a data frame for graphs
x <- runif(n = 100, min = 1, max = 100)     # any value
head(x)
y = rpois(100, lambda = 15)                 # any integer value
head(y)
group = rep(letters[1:2], each = 2, length.out = 100)       # string variable
head(group)

mydata <- data.frame(group, x, y)

# descriptive statistics
summary(mydata$x)
summary(mydata$y)
table(mydata$group)

# histogram
hist(mydata$x)
hist(mydata$x, breaks = 25, col = "red", main="",
     xlab="x",
     ylab="Frequency")
# density plot
dens <- density(mydata$x)
plot(dens, frame = FALSE)
plot(dens)


# Box plot of one variable
boxplot(mydata$x)
# Box plots by groups (group)
# remove frame
boxplot(x ~ group, data = mydata, frame = FALSE, 
        names = c("Group1", "Group2"), border = c("#999999", "#E69F00"))
# Horizontal box plots
boxplot(x ~ group, data = mydata, frame = FALSE,
        horizontal = TRUE)
# Notched box plots
boxplot(x ~ group, data = mydata, frame = FALSE,
        notch = TRUE)

# scatter plot
plot(x, y, data= mydata, xlab = "X", ylab = "Y",
     pch = 19, frame = FALSE)
# Add regression line
plot(x, y, data= mydata, xlab = "X", ylab = "Y",
     pch = 19, frame = FALSE)
abline(lm(y ~ x, data = mydata), col = "blue")

# line plot
x <- 1:50
y1 <- x*x
y2  <- 2*y1
plot(x, y1, type = "b", pch = 19, 
     col = "red", xlab = "x", ylab = "y")
# Add a second line
lines(x, y2, pch = 18, col = "blue", type = "b", lty = 2)
# Add a legend to the plot
legend("topleft", legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty = 1:2, cex=0.8)

# create some data
pd <- data.frame(
  group = c("Male", "Female", "Child"),
  value = c(25, 25, 50)
)
pd

pie(pd$value, labels = pd$group, radius = 1)

# 3D pie chart
library("plotrix")
pie3D(pd$value, labels = pd$group, radius = 1.5, 
      col = c("#999999", "#E69F00", "#56B4E9"))

# bar plot
# use the R built-in VADeaths data set
VADeaths

# Bar plot of one variable
x <- VADeaths[1:3, "Rural Male"]
barplot(x)
# Horizontal bar plot
barplot(x, horiz = TRUE)
# Grouped bar plots
my_colors <- c("lightblue", "mistyrose", "lightcyan", 
               "lavender", "cornsilk")
# Bar plot
barplot(VADeaths, col = my_colors, beside = TRUE)
# Add legend
legend("topleft", legend = rownames(VADeaths), 
       fill = my_colors, box.lty = 0, cex = 0.5)


