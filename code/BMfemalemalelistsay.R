#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("BMfemalemalelistsay.csv")

#plot data

ggplot(gender, aes(x = DATE, y = TSCORE, group = DATE, fill = CATEGORY)) +
	geom_boxplot(outlier.shape=NA) +
	facet_grid(. ~ CATEGORY) +
	xlab('Year') +
	ylab('T-score 5L5R of say-lemma')

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BMfemalemalelistsay.png", width = 10, height = 7)
