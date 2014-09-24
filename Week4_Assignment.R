#Week 4 Assignment

#1
price <- read.table(file = "week-4-price-data.csv", header = TRUE, sep = ",")
makmod <- read.table(file = "week-4-make-model-data.csv", header = TRUE, sep = ",")
merger <- merge(price, makmod, by = "ModelNumber")
print ("27 observations end up in the result. I expected at least 28...")

#2
merger2 <- merge(price, makmod, by = "ModelNumber", all.x = TRUE)

#3
subset2010 <- merger2[merger2$Year == 2010,]

#4
subsetRed <- merger2[merger2$Color == "Red" & merger2$Price > 10000,]

#5
subset5 <- subsetRed[, c(2,4:8)]

#6
num.char <- function(charvec)
{
  as.numeric(nchar(charvec))
}