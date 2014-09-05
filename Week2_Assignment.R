#Week 2 Assignment

#1
queue <- c("James", "Mary", "Steve", "Alex", "Patricia")

#2
queue <- c(queue, "Harold")

#3
queue <- c(queue[2:length(queue)])

#4
queue <- c(queue[1], "Pam", queue[2:length(queue)])

#5
queue <- queue[queue != "Harold"]

#6
queue <- queue[queue != "Alex"]

#7
match("Patricia", queue)

#8
length(queue)