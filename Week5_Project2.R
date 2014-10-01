#Week 5 - Project 2

#1.
  #a) Which city's population, based on percentage, prefers Cullen Skink more?
  #b) Which age group, based on percentage, prefers Cullen skink more?
  #c) Between the two cities, is Cullen skink preferred over Partan bree?
  
#2
  x <- c("yes", "no")
  y <- c(80100, 35900)
  z <- c(143000, 214800)
  a <- c(99400, 43000)
  b <- c(150400, 207000)
  messy.df <- data.frame("Pref" = x, "Young_Edinburgh" = y, "Old_Edinburgh" = z, "Young_Glasgow" = a, "Old_Glasgow" = b)

#3
  library(tidyr)
  library(plyr)
  messy.df %>%
    gather(Age, Votes, -Pref)%>%
    separate(Age, c("Age", "City"), sep = "_" )
  
#4
  