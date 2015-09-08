#load packages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)
library(dplyr)

#read data from csv

gender <- read.csv("top-gender-words-annual-count.csv")
gender2 <- gender %>%
	group_by(GENDER, YEAR) %>%
	mutate(n_genderyear = sum(N)) %>%
	select(GENDER, YEAR, GENDER, TOTAL_PRINTS, n_genderyear)

#plot data

ggplot(gender2, aes(x = (YEAR), y = (n_genderyear/TOTAL_PRINTS), group = GENDER, fill = GENDER)) +
	geom_bar(stat = "identity") +
	facet_grid(GENDER ~ .) +
	xlim(1769, 1829) +
	ggtitle("Sum of female and male category words over total prints in BMSat")

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BMfemalemalelist.png", width = 7, height = 7)
