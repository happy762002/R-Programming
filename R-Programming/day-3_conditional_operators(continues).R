# login system 

email <- readline("Enter the email : ")
pass <- readline("Enter the password : ")

if (email == "yash123@gmail.com" & pass == "yash123"){
  cat("Login Done")
}else if (email != "yash123@gmail.com" & pass == "yash123"){
  cat("Email Not Exist")
}else if (email != "yash123@gmail.com" & pass != "yash123"){
  cat("Email and Passwors are invalid")
}

# Enter the character (to check upper and lower) function uses isupper() and islower()

# a <- readline("Enter the alpha : ")
# 
# if (a.isupper()){
#   cat("alpha is upper")
# }else if (a.islower()){
#   cat("alph is lower")
# }else{
#   cat("invalid alpha")
# }

a <- readline("Enter the alpha : ")

if (grepl("[A-Z]",a)){
  cat("alpha is upper")
}else if (grepl("[a-z]",a)){
  cat("alph is lower")
}else{
  cat("invalid alpha")
}



# question : Rules

# Up to ₹250000 → No tax
# ₹250001–₹500000 → 5%
# ₹500001–₹1000000 → 20%
# Above ₹1000000 → 30%
# 
# Additional Conditions
# 
# Add 4% cess on total tax
# Senior citizens (> 60 age) get ₹50000 extra exemption
# If yearly investment > ₹150000, reduce taxable income by ₹150000
# Show:
#   Original income
# Taxable income
# Tax
# Cess
# Final tax

# income <- as.double(readline("Enter the Annual in Income : "))
# age <- as.integer(readline("Enter the Age : "))
# invest <- as.integer(readline("Enter the investment amount : "))
# 
# if (age > 60) {
#   income <- income - 50000
#   cat("Senior citizen exemption applied!\n")
# }
# 
# if (invest > 150000){
#   income <- income - 150000
#   cat("investment exemption applied!\n")
# }
# 
# if (income < 0){
#   income <- 0
# }
# 
# taxable_income <- income
# 
# if (taxable_incomeincome <= 250000){
#   cat("original income : ",income)
# }else if(income > 250000 & income <= 500000){
#   after_tax <- income-(income*0.05)
#   cat("original income : ",after_tax)
# }else if(income > 500000 & income <= 1000000){
#   after_tax <- income-(income*0.2)
#   cat("original income : ",after_tax)
# }else if(income > 1000000){
#   after_tax <- income-(income*0.3)
#   cat("original income : ",after_tax)
# }



# Input
original_income <- as.double(readline("Enter the Annual Income : "))
age <- as.integer(readline("Enter the Age : "))
invest <- as.double(readline("Enter the Investment Amount : "))

# Initial taxable income
taxable_income <- original_income

# Senior citizen exemption
if (age > 60) {
  taxable_income <- taxable_income - 50000
  cat("Senior citizen exemption applied!\n")
}

# Investment exemption
if (invest > 150000) {
  taxable_income <- taxable_income - 150000
  cat("Investment exemption applied!\n")
}

# Prevent negative taxable income
if (taxable_income < 0) {
  taxable_income <- 0
}

# Tax calculation
tax <- 0

if (taxable_income <= 250000) {
  
  tax <- 0
  
} else if (taxable_income <= 500000) {
  
  tax <- taxable_income * 0.05
  
} else if (taxable_income <= 1000000) {
  
  tax <- taxable_income * 0.20
  
} else {
  
  tax <- taxable_income * 0.30
}

# 4% cess on tax
cess <- tax * 0.04

# Final tax
final_tax <- tax + cess

# Output
cat("\n------ TAX DETAILS ------\n")
cat("Original Income :", original_income, "\n")
cat("Taxable Income :", taxable_income, "\n")
cat("Tax :", tax, "\n")
cat("Cess (4%) :", cess, "\n")
cat("Final Tax :", final_tax, "\n")

