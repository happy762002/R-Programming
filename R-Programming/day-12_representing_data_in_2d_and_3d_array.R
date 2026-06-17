# represent data into 2d and 3d array

arr = array(1:12,dim = c(3,4))
arr

arr1 = array(1:12,dim = c(5,6))
arr1


arr2 <- array(1:8,dim = c(2,3,2))
arr2

arr3 <- array(1:100, dim = c(5, 4, 5))
arr3

# acessing the element
# arr[row,col,layer]
arr2
arr2[1,2,1]
# for row
arr2[1,,]
# for col
arr2[,2,]
# for layer
arr2[,,1]

a <- array(1:8, dim = c(2,2,2))
b <- array(9:16, dim = c(2,2,2))

a+b
a-b
a*b
a/b


# functions

dim(a)
sum(a)
length(a)
 
# questions

# 1. Create a 3D array with dimensions 2×3×2.

arr4 <- array(1:12, dim = c(2,3,2))
arr4

# 2. Print first matrix layer.

arr4[,,1]


# 3. Access element at row 2 column 1 layer 2.

arr4[2,1,2]

# 4. Find dimensions of array.

dim(arr4)

# 5. Find total number of elements.

length(arr4)

# 6. Add two arrays.

a+b

# 7. Multiply two arrays.

a*b

# 8. Find sum of all elements.

sum(a)

# 9. Replace all even numbers with 0.

arr4[arr4%%2==0] = 0
arr4

# 10. Find maximum and minimum value in array.

max(arr4)

# Advanced Practice Questions

# 11. Find average of each layer.

mean(arr4)

# 12. Find row sums for every layer.

sum(arr4[2,,])

# 13. Find column sums for every layer.

sum(arr4[,3,])

# 14. Replace diagonal elements in every layer with square values.
ar = array(1:50, dim = c(5,10))
diag(ar) = diag(ar^2)
ar

# 15. Create 4D array.

arr5 = array(1:64, dim = c(4,4,4,4))
arr5
