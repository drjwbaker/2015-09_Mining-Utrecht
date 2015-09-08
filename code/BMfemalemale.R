#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("BMfemalemale.csv")

#plot data

ggplot(gender, aes(x = DATE, y = (COUNT/TOTAL_PRINTS), group = WORD, linetype = WORD)) +
	geom_smooth() +
	xlim(1770, 1829) +
	ggtitle("Words 'man', 'woman', 'men', 'women', and say-lemma in BMCSat")

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BMfemalemale.png", width = 7, height = 7)
