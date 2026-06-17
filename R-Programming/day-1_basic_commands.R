#day 1 basic programs and all the datatypes and Data structure

print("hello world") # returns the output with index position

cat("hello world") # returns the output without index position 

cat(paste("Result :" , 'yash', ' kumar')) # used for concate 
cat(paste('Result : ',12+45))

cat(paste0("Result : " , 'yash', ' kumar')) # remove extra space

# variables
# to define the variables

n <- 123
cat(paste('The number of variable : ',n))


install.packages("pryr")
library(pryr)

# find the address of the variable
address(n)

# datatypes in R

# 1 numeric type : it store decimal values (10.1)
# 2 integer type : it store numbers (12L)
# 3 logical type : boolean type (True or False)
# 3 complex type : used for equations (2x+3i)
# Data structure : vactor(),matrix(),graph(),data.frame() # help to store data in tabular form
# list

# user define function

a <- as.integer(readline("Enter the number : "))
cat(a)

