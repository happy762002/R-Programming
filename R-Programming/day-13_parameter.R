# parameter : is an argument that pass inside the functions to pass the values at runtime.

sq <- function(num){
  cat(num**2)
}
sq(4)

# additions 
ad <- function(num1,num2){
  cat(num1+num2)
}
ad(5,6)


# factorial

fact <- function(num){
  fact <- 1
  for (x in 1:num){
    fact = fact*x
  }
  cat(fact)
}

fact(100)


# question

# Create a function to convert Celsius to Fahrenheit.

temp <- function(c){
  f  = 1.8*c+32
  cat('The temp in celsius:',c,'\n')
  cat('The temp in fahrenheit:',f)
}

temp(35)

# Create a function to find factorial of a number.


fact <- function(num){
  fact <- 1
  for (x in 1:num){
    fact = fact*x
  }
  cat(fact)
}

fact(100)


# Create a function to check whether a number is prime or not.

prime_check <- function(num){
  if(num > 1){
    
  } 
}

# Create a function to generate Fibonacci series up to n terms.

# Create a function to find sum of all elements in a vector.

# Create a function to calculate average of vector elements.

# Create a function to find largest element in a vector.

# Create a function to find smallest element in a vector.

# Create a function to count even numbers in a vector.

# Create a function to reverse a string.

# Create a function to count vowels in a string.

# Create a function to check whether a string is palindrome or not.

# Create a function to count number of words in a sentence.

# Create a function to sort a vector in ascending order.

# Create a function to find transpose of a matrix.

# Create a function to find diagonal elements of a matrix.



# installed.packages('stringi')
