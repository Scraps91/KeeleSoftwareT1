# Q1

a <- rep(1, 10)
b <- 1:10
c <- c(a,b)
d <- a/b
d2 <- c(3,5,3,6,8,5,4,6,7)


# Q2

v <- matrix(c(2,4,3,1,5,7),
            c(2,3))
v
vector1 <- c(5,10,15,20)
vector2 <- c(25,30,35,40,45,50,55,60)
matrix2 <- matrix(c(vector1, vector2), c(4,4))
matrix2


# Q3

a <- sort(sample(1:500,100))
b <- rpois(100, 25)
c <- rnorm(100, 10, 20)
x <- runif(n = 100, min = 100, max = 150)
grp <- rep(letters[1:2], length.out = 100)

df <- data.frame(a,b,c,x,grp                 )
df

# Part 2
# Q1

