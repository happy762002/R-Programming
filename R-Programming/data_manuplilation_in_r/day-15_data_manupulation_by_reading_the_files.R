install.packages('readxl')
install.packages('dplyr')


library(readxl)
library(dplyr)


df <- read_excel("C:\\Users\\Asus\\Downloads\\Telegram Desktop\\SampleData (2).xlsx")
head(df)


# accessing the elements

head(df)
summary(df)
str(df)


# selecting specific columns

df %>%
  select(Region,Total,Units)


# filter the rows

df %>%
  filter(Units>90)

# adding values in rows

df%>%
  mutate(Total_sales = Total*Units)

df%>%
  mutate(avg_sales = Total*0.10)

# update the existing table

df <- df %>%
  mutate(Total = Total + 525)

head(df)


# sorting 

df %>%
  arrange(desc(Units))

df %>%
  arrange(Units)


# group by

df %>%
  group_by(Region) %>%
  summarise(AvgUnit = mean(Units))


# checking the nulls

df %>%
  filter(!is.na(Units))

sum(is.na(df))


# Read an Excel file containing employee data.
df1 <- read_excel("C:\\Users\\Asus\\Downloads\\employee_data.xlsx")
head(df1)
# Display only Name and Department columns.
df1 %>%
  select(Name,Department)
# Find employees whose salary is greater than ₹60,000.
df1 %>%
  filter(Salary>60000)
# Add a column AnnualSalary = Salary * 12.
df1 %>%
  mutate(AnnualSalary = Salary*12)
# Increase salary by 8% for all employees.
df1 %>%
  mutate(salary = Salary*0.8)
# Find the employee with the highest salary.
max_sal = max(df1$Salary)
max_sal
# Calculate total salary department-wise.
df1 %>%
  group_by(Department) %>%
  summarise(TotalSalary = sum(Salary))
# Sort employees by joining date.

# Remove rows with missing department values.

# Export the manipulated data to a new Excel file.
