#Create Vectors 
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC_poll<- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll<- c(12, 75, 43, 19, 1, 21, 19) 
#Create Data.Frame 
Final_Poll_Results <- data.frame(Name, ABC_poll, CBS_poll); Final_Poll_Results
#Donald won both the polls conducted by ABC and CBS. In the ABC poll, he received 62% of the votes, while in the CBS poll, he received 75% of the votes. The next highest-performing candidate in the ABC poll is Ted with 51% of the votes, and in the CBS poll is Carly with 43% of the votes. 