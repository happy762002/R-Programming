#-----------------------------EDA------------------------------------

install.packages("DataExplorer")

library(DataExplorer)

df <- read_excel("C:\\Users\\Asus\\Downloads\\Telegram Desktop\\Titanic.xlsx")
head(df)

create_report(df,output_file = 'Titanic_EDA_report.html')

#----------------------EDA without packages---------------------------

head(df)
# shows columns 
str(df) 

# dimension of df

dim(df)

# show columnns names

names(df)

# summary

summary(df)

# check the missing data

colSums(is.na(df))

# sum of duplicate values

sum(duplicated(df))

sapply(df, class) #sapple - string apply

# numerical summary

df %>% 
  select(where(is.numeric)) %>%
  summary()


# visualistion

hist(df$Age,
     main = "Age Distribution", xlab = 'Age')

boxplot(df$Fare,
        main = 'Fare Box')

barplot(table(df$Pclass),
        main = 'Passenger Class')

table(df$Survived)
table(df$Sex,df$Survived)

pie(table(df$Survived),
    main = 'Survival Distribution')

# outliers

q1 <- quantile(df$Age,0.25,na.rm = TRUE)
q3 <- quantile(df$Age,0.75,na.rm = TRUE)

print(q1)
print(q3)

iqr = q3 - q1
print(iqr)

lower_limit <- (iqr*1.5) - q1
upper_limit <- (iqr*1.5) + q3
print(lower_limit)
print(upper_limit)

rm_ouliers <- df[df$Age >= lower_limit & df$Age <= upper_limit,]
rm_ouliers

boxplot(rm_ouliers$Age, main = 'Age Boxplot')
