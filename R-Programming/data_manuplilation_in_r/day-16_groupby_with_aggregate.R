# group by with aggregation with dplyr

library('dplyr')
library('readxl')

df <- read_excel("C:\\Users\\Asus\\Downloads\\Telegram Desktop\\SampleData (2).xlsx")
head(df)

# use aggregate function

aggregate(Units ~ Region,
          data = df,
          FUN = mean)
aggregate(Units ~ Region,
          data = df,
          FUN = max)
aggregate(Units ~ Region,
          data = df,
          FUN = min)
aggregate(Units ~ Region,
          data = df,
          FUN = sum)

# dplyr

df %>%
  group_by(Region) %>%
  summarise(total_Units = sum(Units))


df %>%
  group_by(Region) %>%
  summarise(avg_Units = mean(Units))


df %>%
  group_by(Region) %>%
  summarise(max_Units = max(Units))


df %>%
  group_by(Region) %>%
  summarise(min_Units = min(Units))


df %>%
  group_by(Region) %>%
  summarise(count_Units = n())


df %>%
  group_by(Region) %>%
  summarise(
    Total_sales = sum(Total),
    Avg_Sales = mean(Total),
    Max_sales = max(Total),
    Min_sales = min(Total),
    Sales_count = n()
  )

 
# handling null values

emp <- read_excel("C:\\Users\\Asus\\Downloads\\Telegram Desktop\\emp.xlsx")
emp

# count nulls

sum(is.na(emp))
emp[is.na(emp$Salary),]


# fill na

mean_sal <- mean(emp$Salary,na.rm = TRUE) # na.rm using to replace na
mean_sal

emp$Salary[is.na(emp$Salary)] <- mean_sal
emp

emp$Salary[is.na(emp$Salary)] <- 20000
emp

# remove null

na.omit(emp)

# --------------------------------------------------------------------------------------------
  
sales <- c(100,200,300,400,500,50)
months <- c('JAN','FEB','MAR','APRIL','MAY','JUNE')

barplot(sales,
        names.arg = months,
        mian = 'Month Sales',
        xlab = 'month',
        ylab = 'sales')


pie(
  sales,
  labels = months,
  main = 'Sales Distribution'
)


plot(sales,
     type = 'l',
     main = "Month sales",
     xlab = 'month',
     ylab = 'sales'
     )
axis(1,at = 1:6, labels = months)

boxplot(df$Total,
        main = 'totalSales plot',
        ylab = 'units')

hist(df$Total,
        main = 'totalSales plot',
        ylab = 'units')

