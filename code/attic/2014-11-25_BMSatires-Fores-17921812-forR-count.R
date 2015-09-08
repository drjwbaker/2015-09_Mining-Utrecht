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

ggplot(gender, aes(x = (YEAR+2), y = COUNT, fill = CATEGORY)) +
	geom_bar(stat = "identity") +
	facet_grid(. ~ CATEGORY)

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("2014-11-25_BMSatires-Fores-17921812-forR-count.png", width = 7, height = 7)
