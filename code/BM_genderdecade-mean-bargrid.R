#loadpackages

setwd("/home/james/R/2014-11_BM-catalogue/data")
library(lubridate)
library(dplyr, warn.conflicts = FALSE)
library(tidyr, warn.conflicts = FALSE)
library(ggplot2)

#read data from csv

names <- read.csv("BM_names.csv") %>%
	group_by(DECADE, GENDER) %>%
	mutate(mean_decade = mean(N)) %>%
	select(mean_decade, DECADE)	

#plot data

ggplot(names, aes(x = (DECADE+5), y = mean_decade, group = GENDER, fill = GENDER)) +
	ggtitle("A Facet Grid (mean(N), by GENDER)") +
	geom_bar(stat = "identity") +
	facet_grid(GENDER ~ .) +
	coord_flip()

#save data to file

setwd("/home/james/R/2014-11_BM-catalogue/viz")
ggsave("BM_genderdecade-mean-bargrid.png", width = 7, height = 7)
