#loadpackages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)

#read data from csv

names <- read.csv("BM_names.csv")

#plot data

ggplot(names, aes(x = N)) +
	ggtitle("A Histogram") +
	geom_histogram()

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BM_histogram.png", width = 7, height = 7)
