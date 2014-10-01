#Week 5 - Assignment

#Using R’s dplyr package, write R code that shows the 
#average mpg and average weight based on number of 
#cylinders and whether there is automatic transmission; 
#show only for cars that get more than 20 mpg. 

# cyl am avgmpg avgwt
# 1 4 0 22.90000 2.93500
# 2 4 1 28.07500 2.04225
# 3 6 1 20.56667 2.75500

library(dplyr)
mtcars.df <- tbl_df(mtcars)

mtcars_df <- filter(mtcars.df, mpg > 20)

cyl4am <- filter(mtcars_df,cyl == 4, am == 1)%>%
  mutate(
    avgmpg = mean(mpg),
    avgwt = mean(wt)
    ) %>%
    select(cyl, am, avgmpg, avgwt)

cyl4noam <- filter(mtcars_df,cyl == 4, am == 0)%>%
  mutate(
    avgmpg = mean(mpg),
    avgwt = mean(wt)
  ) %>%
  select(cyl, am, avgmpg, avgwt)

cyl6am <- filter(mtcars_df,cyl == 6, am == 1)%>%
  mutate(
    avgmpg = mean(mpg, na.rm = TRUE),
    avgwt = mean(wt, na.rm = TRUE)
  ) %>%
  select(cyl, am, avgmpg, avgwt)

cyl6noam <- filter(mtcars_df,cyl == 6, am == 0)%>%
  mutate(
    avgmpg = mean(mpg, na.rm = TRUE),
    avgwt = mean(wt, na.rm = TRUE)
  ) %>%
  select(cyl, am, avgmpg, avgwt)

avgs <- data.frame(c(cyl4noam[1,]))
avgs[2,] <- cyl4am[1,]
avgs[3,] <- cyl6am[1,]
avgs[4,] <- cyl6noam[1,]

print(avgs)