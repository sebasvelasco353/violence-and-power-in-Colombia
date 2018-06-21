#import the libraries
library("ggplot2")
#Start importing the xls datasets
violencia2008 <- read.csv(file="monitor-eventos-2008-violencia.csv", header=TRUE, sep=",")
violencia2009 <- read.csv(file="monitor-eventos-2009-violencia.csv", header=TRUE, sep=",")
