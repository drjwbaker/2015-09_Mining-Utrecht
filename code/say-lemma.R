#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("say-lemma-R.csv")

#plot data

ggplot(gender, aes(x = YEAR, y = (N/YEAR_COUNT), colour = WORD)) +
	geom_point() +
	facet_grid(. ~ WORD)

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("say-lemma-R.png", width = 14, height = 7)
