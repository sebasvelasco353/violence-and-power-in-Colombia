#import the libraries
library("ggplot2")
library("waffle")

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

# bar chart of number of violent war crimes by dptment during 2008
ggplot(data=violenciaDepartamental2008,aes(x=Departamento, y=freq))+
  geom_bar(stat="identity")+
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))

#transform factors and divide them all in 10 to be able to show them
violenciaDepartamental2008Normaliced <- violenciaDepartamental2008
violenciaDepartamental2008Normaliced$freq <-as.numeric(as.character(violenciaDepartamental2008Normaliced[,2])) / 10

#waffle chart it
waffle(violenciaDepartamental2008Normaliced, rows=10,
       colors = c("#535238", "#4bbb8b", "#6ddabe","#c9ffc7","#5e8b6f","#8f8f8f","#fa8f4d",
       "#456173","#c24a4a","#e8e8e8","#E4D167","#CA496A","#887CA3","#655D79", "#020202",
       "#F2DDCA","#E2CFBE","#A1C1B4","#619D91","#2F363E","#A9CCE8","#4985B7", "#00407D",
       "#2F363E","#3271A4","#FFD318","#F73F61","#A2356F","#542985","#648E78", "#8EECE2"), 
       legend_pos="bottom", size = 1, title="Reparticion del total masacres entre los departamentos durante el 2008")

