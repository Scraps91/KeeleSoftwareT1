library('dplyer')
install.packages("dplyr")
library('dplyer')

getwd()
setwd("C:/Users/kplam/Documents/RClass")
#
#  Vectorised code - inbuilt in R
#
length(5)  # shown as a vector
#
x = c('money', 'street')
y = 'wise'
z = paste(x, y, sep="")
print(z)
print(paste(x, y, sep=""))
print(1:50)
#
print( c("One", 2, "three", "four", 5) )
print( (nchar(c("One", 2, "three", "four", 5))))
print( z[2] )
print( z[10] )
#
# indexing
#
mycolours = c('Red', 'Green', 'Blue', 'Cyan', 'Magneta', 'Yellow')
print( mycolours )
print( mycolours[1:3,6,5,4] )
print( mycolours[ c( TRUE, FALSE ) ] )
#
dinner <- ( c("Soup" "Lobster", "Green", "Carrots", "W_Wine", "Pudding") )
dinner <- ( c("Soup", "Lobster", "Green", "Carrots", "W_Wine", "Pudding") )
dinner[ c(1,6) ] <- ( c("Salads", "Fruits") )
print(dinner)
dinnerX = c( dinner, "A_surprise" )
print(dinnerX)
#
# Lists - initial impression
#
#  As an associative array (or Vector?)
#
weekly_wk_hrs <- list( "Mon"=14, "Tue"=14, "Wed"=8, "Thur"=8, "Fri"=10 )
print(weekly_wk_hrs)
print(weekly_wk_hrs[["Mon"]])
print(weekly_wk_hrs["Mon"])
print(weekly_wk_hrs[[1]])
print(weekly_wk_hrs[[5]])
print(weekly_wk_hrs["Mon"])
#
#   NOTES exploring
#
#  > print(weekly_wk_hrs)
#  $Mon
#  [1] 14
#  $Tue
#  [1] 14
#  $Wed
#  [1] 8
#  $Thur
#  [1] 8
#  $Fri
#  [1] 10
#
#  > print(weekly_wk_hrs[["Mon"]])
#  [1] 14
#  
#  > print(weekly_wk_hrs["Mon"])
#  $Mon
#  [1] 14
#
#  > print(weekly_wk_hrs[[1]])
#  [1] 14
#  > print(weekly_wk_hrs[[5]])
#  [1] 10
#  > 
#  > print(weekly_wk_hrs["Mon"])
#  $Mon
#  [1] 14
#
#  END NOTES
#
names(weekly_wk_hrs)
#
weekly_wk_hrs$Mon
#
mixNum = (c("One", 2, "three", "four", 5))
#
#  Lists
#
person <- list(
  first = "KP",
  last = "Lam",
  job = "Jack of all trade",
  hobby = 5,
  retired = FALSE
)
print(person)
person_not_recommended <- list("James", "OReilly", "CEO", 0, TRUE) 
print( names(person) )
print( names(person_not_recommended) )
#
#
person <- list(
  first = "KP",
  last = "Lam",
  job = "Jack of all trade",
  hobby = 5,
  retired = FALSE,
  
  sports = list( 
     best = "badmintion", 
	 sec_best = "basketball",
	 n_more = 1 
  )
)
print(person)
#
#  The $ reference/operator
#
print(person$first)
# [1] "KP"
print(person$last)
# [1] "Lam"
print(person$job)
# [1] "Jack of all trade"
print(person$hobby)
# [1] 5
print(person$retired)
# [1] FALSE
print(person$sport$best)
# [1] "badmintion"
print(person$sport$sec_best)
# [1] "basketball"
print(person$sport$n_more)
# [1] 1
#
#************************************************
#  difference in <- and =
# qls <- list( BSc=TRUE, pGrad="Desirable", minExp = 5 )
# jDesc <- c("Data Analysis", "Coding", "Team building", "Travel")
# jAdvert <- list ( qls, jDesc )
#
#  **USE ONLY "=" as a named/parameter specifier for functions' arguments.
#
#***************************
#
Advert <- list ( qls = list( BSc=TRUE, pGrad="Desirable", minExp = 5 ), 
                 jDesc = c("Data Analysis", "Coding", "Team building", "Travel"))
Advert$qls
#
#  modify elements in list
#
Advert$qls$BSc <- FALSE
Advert$qls
#  
#  But what if??
#
Advert$qls$BSc <- NULL
print(Advert$qls) # will return NULL. So be aware(!)
#
#  [index] for element of a vector. [[name or index]] a list element
#
# This return the list first as $
#
person["first"]

is.list(person["first"]) # return TRUE

person[["first"]]  # double returns a vector

is.list(person[["first"]]) # return  FALSE

#
#print(jAdvert)
#
# QLS = list( BSc=TRUE, pGrad="Desirable", minExp = 5 )
#JDESC = c("Data Analysis", "Coding", "Team building", "Travel")
# jAdvert <- list ( QLS, JDESC )

# Use of lapply

guests <- list("Dan", "Amy", "Dorothy")
print(guests_upper <- lapply (guests, toupper)) # change all names to upper case

print(singing_contest <- lapply(guests, paste, "sings")) # add/extend data to an existing list

flower <- list(class='A', minTemp=12, maxTemp=25, indoor=FALSE, species='Lily')

## SINGLE brackets returns a list
flower[1]
## $class
## [1] "A"

## can use any vector as the argument to single brackets, just like with vectors
flower[c("species", "indoor")]

## DOUBLE brackets returns the element (here its a vector)!
flower[[1]]  # [1] "A"

## Dollar notation is equivalent to the double brackets
flower$class  # [1] "A"

temperatureRange = flower$maxTemp - flower$minTemp
print(temperatureRange)

# 
# Some notes on control structures
#

some_list_data <- list("KPL", 25, c(12349876, 5678111, "Quiet - my account!"))  # NB. Unnamed List NOT recommended 
for(field in some_list_data) {
   cat("field length:", length(field), "\n")
}

for(i in 1:5)
   print(i)

data <- 1:4
for(fun in c(sqrt, exp, sin)) {
   print(fun(data))
}

ijk <- 1
while(ijk <= 5) {
   print(i)
   ijk <- ijk + 1
}
cat("Well done\n")

# The following will get you the same results as above.
for(i in 1:10) {  # using "break" to force/break out the sequence
   cat(i, "\n")
   if(i > 4)
      break
}
cat("Well done\n")

for(ijk in 1:10) {  # use next (the opposite of break) to force out of sequence 
   if(ijk %% 2 != 0)    # exclude the 'odds'
      next
   print(ijk)
}

#***********************************************
#
# How to make reptitions/loops more efficient
# 
#***********************************************

seq <- 1:1000 
less_eff <- function() {  # the least efficient way
   r <- numeric()
   for(i in seq)
      r <- c(r, sqrt(i))
}
soso_eff <- function() {  # better avoiding use of a 'growing' sequence
   r <- numeric(length(seq))
   for(i in seq)
      r[i] <- sqrt(i)
}
most_eff <- function() { sqrt(seq) }  # best utilising the 'vectorised' function/code!!
#
install.packages('microbenchmark')
library(microbenchmark)
microbenchmark::microbenchmark(less_eff(), soso_eff(), most_eff())

#*********************
#
#  Conditionals
#
#*********************

test_food_temp <- function(temp) {
  if (temp > 120) {
    status <- "This porridge is too hot!"
  } else if (temp < 70) {
    status <- "This porridge is too cold!"
  } else {
    status <- "This porridge is just right!"
  }
  return(status)
}
test_food_temp(105)  # "This porridge is just right!"
test_food_temp(60)   # "This porridge is too cold!"
test_food_temp(150)  # "This porridge is too hot!"

# ***************************************************
#  The in/famous "dangling else" problem that you might already have
#  encountered in other programming class(es) - e.g. Java
#  Namely,
#
# if a then s
#   if b then s1 
# else s2
#
# Question: which of the two 'if' branches you expect the last (else) statement
#           in the psuedo code as shown above is attached to??
#
# Answer: Left as a little R exercise for you!
#
#*****************************************************