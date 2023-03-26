round(sqrt(5), digits=2)
round(log(5), digits=4)

logVar <- log(6)
round(logVar, digits = 4)

city <- c("Chester", "Liverpool", "Birmingham", "Leeds", "London", "Cardiff", "Nottingham")
city
city[c(1:3,6,7)]
# c() indicates 'Column' 

?seq

numSeq1 <- seq(0, 100, 11.11)
numSeq2 <- seq(from = 0, to=100, by=11.11)
numSeq1
numSeq2


aRange = 1:10
aRange
aRange ^ 8
aRange + 40
sqrt(aRange)
aRange > 4

houses_vector <- c("Bungalow", "Flat", "Flat", "FLAT", "Detatched", "Terrace", "Terrace")
houses_vector
houses_factor <-factor(c("Bungalow", "Flat", "Flat", "FLAT", "Detatched", "Terrace", "Terrace")) 
houses_factor

table(houses_factor)

# Matrices

a_matrix <- matrix(c(3,5,7,4,3,1), c(3,2))
a_matrix


# Arrays

a3dim_array = array(1:24, dim=c(4,3,2))
a3dim_array


# List

v = list(bob=c(2,3,5), john=c("aa", "bb"))
v

# DataFrame

n = c(2,3,5)
s = c("aa", "bb", "cc")
b = c(TRUE, FALSE, TRUE)

df = data.frame(n,s,b)

head(df)

mtcars


# Plots

x <- rnorm(n = 1000, mean = 50, sd = 10)
hist(x, breaks=24, col="lightgrey")
dist(x)


library(readxl)
sample <- read_excel("sample.xlsx")
View(sample)
head(sample)


