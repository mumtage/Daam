#Project 1: Functions


#4
analyze.this <- function(vec)
{
  mini <- vec[1]
  maxi <- vec[1]
  sigma <- 0
  sd2sum <- 0
  sorted <- sort(vec)
  for (a in vec)
  {
    if (is.na(a))
    {
      next
    }
    if (a < mini)
    {
      mini <- a
    }
    if (a > maxi)
    {
      maxi <- a
    }
    sigma <- sigma + a
  }
  even <- (length(sorted) %% 2) == 0
  if (even)
  {
    medi <- ((sorted[length(sorted) / 2] + sorted[(length(sorted) / 2) + 1]) / 2)
  } else
  {
    medi <- sorted[(length(sorted) / 2) + 1]
  }
  
  first <- (sorted[(length(sorted) - 1 )/ 4] + sorted[((length(sorted) - 1 )/ 4) +1]) / 2
  third <- (sorted[(length(sorted) - ((length(sorted) - 1 )/ 4))] + sorted[(length(sorted) - ((length(sorted) - 1 )/ 4)) + 1]) / 2
  x_bar <- sigma / length(sorted)
  sd2 <- ((sorted - x_bar) ** 2)
  for (i in sd2)
  {
    sd2sum <- sd2sum + i
  }
  sd <- (sd2sum / (length(sorted)))**.5
  NAS <- missnum(vec)
  output <- list(mini, maxi, x_bar, medi, first, third, sd, NAS)
  names(output) <- c("Minimum", "Maximum", "Mean", "Median","First Quartile", "Third Quartile", "Standard Deviation", "# of Missing Values")
  return(output)
}
