# ggplot2 visualisations

install.packages('ggplot2')
library(ggplot2)

# data -> dataset
# aes() -> axis
# geom() -> type of plot

head(mtcars)
# point chart
ggplot(mtcars,aes(x = wt, y = mpg))+
  geom_point()

# dataset
head(economics)
# line chart
ggplot(economics,aes(x = date, y = unemploy))+
  geom_line(fill = 'lightgreen',color = 'darkgreen',linewidth = 1.5)
# bar chart
ggplot(mtcars,aes(x = factor(cyl)))+
  geom_bar()

# point chart with lab
ggplot(mtcars,aes(x = wt, y = mpg))+
  geom_point() +
  labs(
    title = 'weight and mpg',
    x = 'weight',
    y = 'miles per gallons'
  ) + theme_minimal()

# box plot

ggplot(mtcars,aes(x = factor(cyl),y = mpg))+
  geom_boxplot()

# adding colors

ggplot(mtcars,aes(x = factor(cyl),y = mpg))+
  geom_boxplot(fill='lightblue',color='darkblue')


# using sample dataset

library(readxl)

data <- read_excel("C:\\Users\\Asus\\OneDrive\\Desktop\\ducat_data_analysis\\tableau\\data\\Sample - Superstore (2).xls")
data

# box,line,bar,point

colnames(data)

# bar plot

ggplot(data,aes(x = factor(Region)))+
  geom_bar() +
  labs(
    x = 'region',
    y = 'sales',
  ) + theme_minimal()


# line

ggplot(data,aes(x = `Ship Mode`, y = `Order Date`))+
  geom_line()


