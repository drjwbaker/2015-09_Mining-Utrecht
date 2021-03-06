#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("2014-11-25_BMSatires1770-1829-dedup-astext-counts-top40.csv")

#plot data

ggplot(gender, aes(x = RANK, y = N)) +
	geom_bar(stat = "identity")

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("2014-11-25_BMSatires1770-1829-dedup-astext-counts-top40.png", width = 7, height = 7)
