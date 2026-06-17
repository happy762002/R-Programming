# day 2 variable values can be assign by two ways:-

# storing employee data 
id <- 100 # by the number always store in double (to convert into integer add 'L' which represent the long integer)
name <- 'yash'
salary <- 12000.0
acc <- TRUE

cat(paste("the emp id :",id))
cat(paste("the emp name : ",name))
cat(paste("the emp salary : ",salary))
cat(paste("the emp acc : ",acc ))

# print type of the variable

cat(typeof(id))
cat(typeof(name))
cat(typeof(salary))
cat(typeof(acc))

# user define input to store the data

# datatypes
# 1 as.integer() :- store the numerical values
# 2 as.double()  :- store float values
# 3 as.logical() :- store boolean
# 4 as.factor()  :- used for categorisation in data.fram() matrix


id <- as.integer(readline("Enter the id : "))
name <- readline("Enter the name : ")
salary <- as.double(readline("Enter the salary : "))
acc <- as.logical(readline("Enter the acc : "))


cat(paste("the emp id :",id))
cat(paste("the emp name : ",name))
cat(paste("the emp salary : ",salary))
cat(paste("the emp acc : ",acc ))

cat(typeof(id))
cat(typeof(name))
cat(typeof(salary))
cat(typeof(acc))

# logical program

n = as.integer(readline("enter the n1 : "))
n1 = as.integer(readline("enter the n2 : "))
r = cat(n+n1)


# logical operators

# 1. arithmetic : +,-,*,/,%%(mod),%/%(floor),^(power)
# 2. logical : $$, |, !=
# 3. comparison : <,>,<=<,>=,==
# 4. assignment : <-(copes the address of the variable),>-,=(doesn't copy the address of the variable )
#  
# 
# 


# 1 arithmetic op

x <- 12
y <- 5

cat(x+y)
cat(x-y)
cat(x/y)
cat(x*y)
cat(x%%y)
cat(x%/%y)
cat(x^y)

# 2 logical

x <- 12
y <- 100

cat(x<100 & y == 100)
cat(x<100 & y != 100)
cat(x>100 & y != 100)
cat(x<100 | y == 100)
cat(x<100 | y != 100)
cat(x>100 | y != 100)

# Range : also returns the last values 

cat(1:20)
cat(20:30)
cat(45:100)

# 3 membership op

x <- c(1:20) # c = combine, not as such used. 

cat(8 %in% x)
cat(80 %in% x)


a <- matrix(c(1:4),nrow = 2)
a

b <- matrix(c(5:8),nrow = 2)
b

cat(a %*% b)
O