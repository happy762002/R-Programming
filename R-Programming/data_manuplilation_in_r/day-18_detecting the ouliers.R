# detecting outliers

library(readxl)
library(dplyr)

df <- read_excel("C:\\Users\\Asus\\Downloads\\Telegram Desktop\\Titanic.xlsx")
head(df)

boxplot(df$Age, main = 'Age Boxplot')

q1 <- quantile(df$Age,0.25,na.rm = TRUE)
q2 <- quantile(df$Age,0.5,na.rm = TRUE)
q3 <- quantile(df$Age,0.75,na.rm = TRUE)

print(q1)
print(q2)
print(q3)

iqr = q3-q1 # iqr inter quantile range
print(iqr)

lower_limit = (iqr*1.5) - q1
print(lower_limit)

upper_limit = (iqr*1.5) + q3
print(upper_limit)

# the data of both upper limit and lower limit are the outliers

df[df$Age < lower_limit,]
df[df$Age > upper_limit,]

# clean code

clean_code <- df[df$Age >= lower_limit & df$Age <= upper_limit,]
clean_code

boxplot(clean_code$Age,main = 'Age boxplot')





