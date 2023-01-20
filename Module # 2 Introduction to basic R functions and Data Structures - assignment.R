#Module # 2 Introduction to basic R functions and Data Structures – Assignment
#Create a vector of values (assignment2) and create a function (myMean) in which the function returns the sum of all values divided by the number of values, then put the vector through the function.
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
myMean(assignment2)

