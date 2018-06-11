library(ggplot2)
summary(diamonds)

str(diamonds) #Quiz 1
?diamonds #Quiz 1

ggplot(diamonds) + geom_histogram(aes(x=price), binwidth = 1000, 
                                  color = "black", fill = "blue") + #Quiz 2
  geom_hline(yintercept = 200 ,color = "red") 
summary(diamonds) #Quiz 3  Median : 3.530  Mean   : 3.539

nrow(subset(diamonds, price < 500)) #Quiz 4
nrow(subset(diamonds, price < 250)) #Quiz 4
nrow(subset(diamonds, price >= 15000)) #Quiz 4

ggplot(diamonds) + geom_histogram(aes(x=price), binwidth = 100, 
                                  color = "black", fill = "blue") + 
  coord_cartesian(xlim=c(0,1500)) #Quiz 5


ggplot(diamonds) + geom_histogram(aes(x=price), binwidth = 100, 
                                  color = "black", fill = "blue") +
  facet_grid(. ~ cut) #Quiz 6

summary(diamonds$price) # Max = 18823 #Quiz 7
summary(diamonds$price) # Min = 326   #QUiz 7
by(diamonds$price,diamonds$cut,summary) #Quiz 7

ggplot(diamonds) + geom_histogram(aes(x=price), binwidth = 100, 
                                  color = "black", fill = "blue") +
  facet_grid(. ~ cut) #Quiz 8
ggplot(diamonds) + geom_histogram(aes(x=price)) + 
  facet_wrap(~ cut,scales="free_y",ncol = 5) #Quiz 8
qplot(x = price, data = diamonds) + facet_wrap(~cut, scales="free") #Quiz 8

ggplot(diamonds) + geom_histogram(aes(x=price/carat), binwidth = 0.05,
                                  color = "black", fill = "blue") + 
  scale_x_log10() +
  facet_grid(. ~ cut) #Quiz 9

by(diamonds$price, diamonds$cut, summary)
ggplot(diamonds) + geom_boxplot(aes(x = cut,  y = price, fill = cut)) + 
  coord_cartesian(ylim = c(0, 8000)) + 
  scale_y_continuous(breaks = seq(0,8000,500)) #Quiz 10

by(diamonds$price, diamonds$color, summary) #Quiz 11
by(diamonds$price, diamonds$color, IQR) #Quiz 11

ggplot(diamonds) + geom_boxplot(aes(x=color,y=price/carat, fill=color)) + 
  scale_y_continuous(breaks = seq(0,8000,500)) + 
  coord_cartesian(ylim = c(0,8000)) #Quiz 12

ggplot(diamonds) + geom_freqpoly(aes(x = carat), binwidth = 0.01) + 
  scale_x_continuous(breaks = seq(0,5,0.1)) +
  geom_hline(yintercept = 2000 ,color = "red")  #Quiz 13

#gapminder
library(tidyverse)
library(reshape2)
library(lubridate)
cell_phones <- readxl::read_xlsx('cell_phone.xlsx' )
cell_phones <- melt(cell_phones, id.vars = c("Mobile cellular subscriptions, total number"))
names(cell_phones) <- c("Country","Year","Phone.Count")
cell_phones$Year <- gsub("X","",cell_phones$Year)
cell_phones$Year <- as.factor(cell_phones$Year)
cell_phones$Phone.Count <- as.numeric(cell_phones$Phone.Count,na.action)

cell_phones <- cell_phones[complete.cases(cell_phones),]

turkey <- subset(cell_phones, Country == "Turkey")

qplot(x = Phone.Count , data = turkey, binwidth = 0.5) +
  scale_x_discrete()


#gapminder

#birthday 
library(lubridate)
birthdays <- read.csv('birthdays.csv', header = T , check.names = F)
birthdays$dates <- mdy(birthdays$dates)
birthdays$month <- month(birthdays$dates)
birthdays$day <- day(birthdays$dates)
summary(birthdays)

# 20 04 
my_bd <- subset(birthdays, month == 04 & day == 20)
my_bd
nrow(my_bd)

ggplot(birthdays) + geom_histogram(aes(x = month),
                                   color = I('black'),
                                   fill = I('blue'),
                                   binwidth = 0.5) +
  scale_y_discrete() +
  scale_x_discrete() 

qplot(x = month , data = birthdays,binwidth = 0.5) +
  geom_hline(yintercept = 80 ,color = "red") +
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12) ) 
#birthday




