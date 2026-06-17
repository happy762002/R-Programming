# collection of data in tabular form

n <- c(10,20,30,40,50,60)
cat(n)
# storing name
name <- c("yash","happy","sandeep")
cat(name)
# storing logical 
status <- c(TRUE,FALSE)
cat(status)
# acessing the element
cat(n[4])
# acessing the multiple element
cat(n[c(1,3)])
# modifying the element
n[3] <- 90
cat(n)
# adding new element
n <- c(n,200)
cat(n)
# mathmethical operation
x <- c(1,2,3)
y <- c(4,4,6)
cat(x+y)
cat(x*y)
cat(x-y)
cat(x/y)
cat(x%/%y)
cat(x%%y)
# adding element at specific location
n <- append(n,500,after = 2)
n
# print the length and datatype
length(n)
typeof(n)



# question

# Create a vector of 5 student marks.
marks = c(50,70,65,78,89)
# Find the third element.
cat(marks[3])
# Add 10 to all elements.
cat(marks+10)
# Find maximum and minimum value.
max(marks)
min(marks)
# Create vector from 1 to 20.
range_vec = c(1:20)
cat(range_vec)
# Create vector of even numbers.
even_vec = seq(2,20,by = 2)
even_vec
# Reverse a vector.
rev_ver = c(20:1)
rev_ver
rev(marks)  # rev is the function used to reverse the vector
# Find sum and average of vector.
sum(marks)
mean(marks)







