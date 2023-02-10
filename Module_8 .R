install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr) 

#Step 1 
#----Read file from computer via prompt
Student_assignment_6 <- read.csv("M8Data.csv", header = TRUE) #Problems with this is that txt files do not contain columns, must save as csv to performt eh following. 
Student_assignment_6
#Change Grade from INT to NUM 
Student_assignment_6$Grade <- as.numeric(Student_assignment_6$Grade)
StudentAverage = ddply(Student_assignment_6, "Sex", transform, Grade.Average=mean(Grade))
#Not sure why this code was given in the instructions, it simple isolates the Sex column (characters) and attempts to perform mean() on them. 
#sex = Student_assignment_6$Sex
#mean(sex)
write.csv(StudentAverage, "StudentAverage.csv")

#Step 2 
i_students <- subset(Student_assignment_6, grepl("i", Student_assignment_6$Name, ignore.case=T)); i_students

#Step 3
write.csv(i_students, "final_filtered.csv")
