# return type
# help to store result in the variable
addition <- function(x,y){
  return(x+y)
}

res = addition(12,55)
cat(res)

square <- function(num){
  return(num^2)
}

res = square(10)
cat(res)

factorial <- function(num){
  fact <- 1
  for (x in 1:num){
    fact = fact * x
  }
  return(fact)
}

res = factorial(15)
cat(res)


# task

# create a function that return sum of all elements

sum_vec <- function(vec){
  return(sum(vec))
}

vec <- c(1,2,3)
res = sum_vec(vec)
cat(res)


# return on +ve values

count_vec <- function(vec){
  count = 0
  for (x in vec){
    if (x > 0){
      count = count+1
    }
  }
  return(count)
}

vec <- c(-1,2,3,4,-6,-8,-9)
res = count_vec(vec)

cat(res)

# create a function reverse of string

# 
# rev_string <- function(str){
#   
# }


# return all even number

even_num <- function(vec){
  for (x in vec){
    if (x%%2 == 0){
      return("Even No")
    }else{
      return("Odd No")
    }
    
  }
}




even_num <- function(vec){
  eve <- c()
  for (x in vec){
    if (x %% 2 == 0){
      eve <- append(eve,x)
    }
  }
  return(eve)
}


n <- c(1,2,3,4,6)
res <- even_num(n)
cat(res)



