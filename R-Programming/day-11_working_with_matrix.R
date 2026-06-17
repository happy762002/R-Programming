# matrix : works in 2D and 3D array

num = matrix(c(1:6),nrow = 2,ncol = 3)
num

# version 2

num1 = matrix(c(1,2,3,4,5),nrow = 2,byrow = TRUE)
num1

# accessing the matrix

num[1,2]
num[1,]
num[,2]

# matrix cal

a <- matrix(c(1,2,3,4,5),nrow = 2)
b <- matrix(c(6,7,8,9,10),nrow = 2)
a+b
a-b
a*b
a/b

# transposing the matrix

t(a) # transposing the row
dim(a)
sum(a)
rowSums(a)
colSums(a)

# questions

# 1. Create a 5×5 matrix using random numbers and find:
#   Row sums
# Column sums
# Overall average

mu = matrix(c(1:25),nrow = 5,ncol = 5)
mu
rowSums(mu)
colSums(mu)
mean(mu)
# 2. Find all prime numbers present inside a matrix.




# 3. Replace all even numbers in matrix with 

mu[mu%%2 == 0] = 0
mu

# 4. Replace diagonal elements with their square.

diag(mu) = diag(mu^2)
mu

# 5. Find second largest element in matrix.

num1 = matrix(c(1:25),nrow = 5,ncol = 5)
num1




# 6. Find frequency of each element in matrix.
# 
# 
# 7. Count positive, negative, and zero values separately.
# 
# ⸻
# 
# 8. Find row having maximum sum.
# 
# ⸻
# 
# 9. Find column having minimum average.
