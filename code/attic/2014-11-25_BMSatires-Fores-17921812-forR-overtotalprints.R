#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("2014-11-25_BMSatires-Fores-17921812-forR.csv")

#plot data

ggplot(gender, aes(x = (YEAR+2), y = (COUNT/PRINTS), fill = IDENTITY)) +
	geom_bar(stat = "identity")

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("2014-11-25_BMSatires-Fores-17921812-forR-overtotalprints.png", width = 7, height = 7)
