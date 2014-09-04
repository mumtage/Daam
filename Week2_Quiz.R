#Homework Week 2

#1
victor <- c(1,1,2,3,5,8,13,13,3:14)

#2
c.victor <- as.character(victor)

#3
f.victor <- as.factor(victor)

#4
nlevels(f.victor)

#5
m.victor <- 3 * victor^2 - 4 * victor + 1

#6
list1 <- list(Aleph = 1, Beth = 2, Gimel = 3, Daleth = 4)

#7
chars <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
nums <- 1:10
facts <- factor(c(1, 1, 1, 2, 2, 2, 3, 3, 3, 3))
dates <- c(seq( as.Date("2005-01-01"), by=365, len=10))
dataFrame1 <- data.frame(chars,facts,nums,dates)

#8
facts <- factor(facts, levels = c(levels(facts), 4))
facts[11] <- 4

#9
read.table(file = temperatures.csv, sep = ",")

#10
setwd("C:/Whatever")
read.table(file = measurements.txt, sep = "\t")

#11
theUrl <- "http://pipedreams.com/data.txt"
pipes <- read.table(file = theUrl, sep = "|")