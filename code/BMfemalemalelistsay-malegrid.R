#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("BMfemalemalelistsay.csv")
gender2 <- filter(gender, CATEGORY=="male")

#plot data

ggplot(gender2, aes(x = DATE, y = TSCORE)) +
	geom_line() +
	xlim(1786, 1828) +
	ylim(0, 5.5) +
	facet_grid(WORD ~ .)

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BMfemalemalelistsay-malegrid.png", width = 3.5, height = 7)
