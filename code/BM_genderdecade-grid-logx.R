#loadpackages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)

#read data from csv

names <- read.csv("BM_names.csv")

#plot data

ggplot(names, aes(x = N, fill = GENDER)) +
	ggtitle("A Facet Grid (log(x), by DECADE and GENDER") +
	geom_histogram() +
	scale_x_log10() +
	facet_grid(DECADE ~ GENDER)

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BM_genderdecade-grid-logx.png", width = 7, height = 7)
