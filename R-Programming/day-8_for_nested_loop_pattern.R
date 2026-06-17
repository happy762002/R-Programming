# nested for loop
# for(row){
#    for(col){
#} 
#}

for(x in 1:3){
  for(y in 1:3){
    cat("* ")
  }
  cat("\n")
}

for(x in 1:3){
  for(y in 1:x){
    cat("x ")
  }
  cat("\n")
}


for(x in 3:1){
  for(y in x:1){
    cat("x ")
  }
  cat("\n")
}

# print right-right angle triangle
for(x in 1:3){
  for(y in 3:x){
    cat(" ")
  }
  for(k in 1:x){
    cat("x")
  }
  cat("\n")
}


# print LEFT-right angle triangle

for(x in 3:1){
  for(y in 3:x){
    cat(" ")
  }
  for(k in 1:x){
    cat("x")
  }
  cat("\n")
}


# pyramid

for(x in 1:3){
  for(y in 3:x){
    cat(" ")
  }
  for(k in 1:x){
    cat("x")
  }
  if(x>1){
    for(z in 1:(x-1)){
      cat("x")
    }
  }
  cat("\n")
}


# pyramid without if 

for(x in 1:3){
  for(y in 3:x){
    cat(" ")
  }
  for(k in 1:x){
    cat("x")
  }
    for(z in 1:x){
      cat("x")
    }
  cat("\n")
}


