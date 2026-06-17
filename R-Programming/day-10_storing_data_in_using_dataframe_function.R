# data.frame = store data in tabular format


emp <- data.frame(
  id = c(101:104),
  name = c(
    "yash",
    "rohit",
    "sandeep",
    "sam"),
  salary = c(12000,14000,16000,18000)
)
emp


# my version

emp <- data.frame(
  id = c(101:104),
  name = c(
    "yash",
    "rohit",
    "sandeep",
    "sam"),
  salary = c(12000,14000,16000,18000)
)
print(emp,row.names=FALSE)




emp <- data.frame(
  id = c(101:104),
  name = c(
    "yash",
    "rohit",
    "sandeep",
    "sam"),
  salary = c(12000,14000,16000,18000)
)
emp

# veiwing summary

head(emp)
tail(emp)
str(emp)
summary(emp)


# accessing the columns

emp$name
emp$salary
emp["name"]
emp[,"name"] # to show data in horizontally

emp[1,]
emp[1,"name"]

# add new col

emp$bonus <- c(5000,6000,3000,4000)
emp

# modify

emp$salary <- emp$salary * 0.05
emp

# filtering data

emp[emp$bonus < 7000,]
emp[emp$bonus < 5000,]
emp[emp$bonus > 5000 & emp$bonus < 7000,]
emp[emp$bonus > 5000 | emp$bonus < 7000,]
emp[emp$bonus %in% c(4000,6000),]
emp[emp$name %in% c('yash','rohit'),]

# use full function

nrow(emp)
ncol(emp)
colnames(emp)

