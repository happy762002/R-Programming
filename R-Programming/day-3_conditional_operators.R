# conditional operators

# odd even

n <- as.integer(readline("Enter the number : "))

if(n%%2==0){
  cat(paste('Even No', n))
}else{
  cat(paste('Odd No', n))
}

# authenticator

email <- readline("Enter the email : ")
pass <- readline("Enter the password : ")

if(email == "yash123@gmail.com" & pass == "yash123"){
  cat("Login Done\n welcome yash")
}else{
  cat("login Failed")
}

# ATM

bal <- 15000

wdrl <- as.double(readline("Enter the withdrawl amount : "))

if(bal >= wdrl){
  bal <- bal-wdrl
  cat(paste("Witdrawal successfull : ",wdrl))
  cat(paste("\nCurrent balance : ",bal))
}else{
  cat("Insufficient Balance")
}

#  vowels checker

ch = readline("Enter the Characters: ")
if (ch %in% c('a','i','o','u','e')){
  cat("Vowels")
}else{
  cat("Consonent")
}

# loan process (salary >= 50000 and credit >= 700)

sal = as.double(readline("Enter the Salary : "))
cr = as.double(readline("Enter the Credit : "))

if (sal >= 50000 & cr >= 700){
  cat("eligible for loan")
}else{
  cat("Not Eligible")
}


# ladder and nested both are used to check multiple conditions at the same time

# bill processing 

amount <- as.double(readline("Enter the amount : "))
mode <- readline("Enter the Mode of Payment : ")

if (mode == "cash"){
  cat("No Discount applied\n Payable Amount : ",amount)
}else if (mode == "credit"){
  amount <- amount - (amount*0.05)
  cat("5% Discount applied\n Payable Amount : ",amount)
}else if (mode == "debit"){
  amount <- amount - (amount*0.07)
  cat("7% Discount applied\n Payable Amount : ",amount)
}else{
  cat("Select the mode of payment")
}

