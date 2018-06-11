 install.packages("tidyverse") 
 library(readr)
 library(ggplot2)
 library(scales)
 library(dplyr)
 library(knitr)

 setwd("C:/Users/forbi/Desktop")

 UNdata_Export_20171026_130851047 <- read_csv("C:/Users/forbi/Desktop/UNdata_Export_20171026_130851047.zip")

 View(UNdata_Export_20171026_130851047)

 dim(UNdata_Export_20171026_130851047)

 summary(UNdata_Export_20171026_130851047)

 p1 <- ggplot(data = UNdata_Export_20171026_130851047, aes(x=Year, y=Rate))
 p1 + geom_bar(stat="identity")

 p1 <- ggplot(data = UNdata_Export_20171026_130851047, aes(x=Year, y=Rate))
 p1 + geom_bar(stat="identity")

 filter1<- UNdata_Export_20171026_130851047 %>%
+     group_by(`Country or Area`) %>%
+     filter(`Country or Area`=="Turkey") %>%  ggplot(aes(x=Year, y = Count)) + geom_bar(stat = "identity")
 filter1

 filter2<- UNdata_Export_20171026_130851047 %>%
+     group_by(`Country or Area`) %>%
+     filter(`Country or Area`=="Luxembourg") %>%  ggplot(aes(x=Year, y = Count)) + geom_bar(stat = "identity")
 filter2

 filter3<- UNdata_Export_20171026_130851047 %>%
+     group_by(`Country or Area`) %>%
+     filter(`Country or Area`=="India") %>%  ggplot(aes(x=Year, y = Rate)) + geom_bar(stat = "identity")
 filter3

 filter4<- UNdata_Export_20171026_130851047 %>%
+     group_by(`Country or Area`) %>%
+     filter(`Country or Area`=="Brazil") %>%  ggplot(aes(x=Year, y = Count)) + geom_bar(stat = "identity")
 filter4
