#import the libraries
library("ggplot2")
library("plyr")

#Start importing the xls datasets
violencia2008 <- read.csv(file="monitor-eventos-2008-violencia.csv", header=TRUE)
violencia2009 <- read.csv(file="monitor-eventos-2009-violencia.csv", header=TRUE)
violencia2010 <- read.csv(file="monitor-eventos-2010-violencia.csv", header=TRUE)
violencia2011 <- read.csv(file="monitor-eventos-2011-violencia.csv", header=TRUE)
violencia2012 <- read.csv(file="monitor-eventos-2012-violencia.csv", header=TRUE)
violencia2013 <- read.csv(file="monitor-eventos-2013-violencia.csv", header=TRUE)
violencia2014 <- read.csv(file="monitor-eventos-2014-violencia.csv", header=TRUE)
violencia2015 <- read.csv(file="monitor-eventos-2015-violencia.csv", header=TRUE)
violencia2016 <- read.csv(file="monitor-eventos-2016-violencia.csv", header=TRUE)
violencia2017 <- read.csv(file="monitor-eventos-2017-violencia.csv", header=TRUE)
violencia2018 <- read.csv(file="monitor-eventos-2018-violencia.csv", header=TRUE)

#count number of violent acts
violenciaDepartamental2008 <- count(violencia2008, 'Departamento')

#reOrder the table
violenciaDepartamental2008$Departamento<-reorder(violenciaDepartamental2008$Departamento,-violenciaDepartamental2008$freq)
class(violenciaDepartamental2008)

# bar chart of number of violent war crimes by dptment during 2008
ggplot(data=violenciaDepartamental2008,aes(x=Departamento, y=freq))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))

