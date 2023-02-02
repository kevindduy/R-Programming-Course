#Module # 4 Programming structure in R 
#The following data was collected by the local hospital. This data set contains 5 variables based on observation of 8 patients. In addition to the measurements of the patients checking in to the hospital that night, this data provides the patients' histories regarding the frequency of their visits to the hospital in the last 12 months. This data displays the measurement of blood pressure, first assessment by general doctor (bad=1, good =0) titled "first," the second assessment by external doctor (called "second"), and the last row provides the head of the emergency unit's decision regarding immediate care for the patient based on the values 0 or 1 (low = 0, high =1).
Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c("bad","bad","bad","bad","good","good","good","good","NA","bad")
Second <- c("low","low","high","high","low","low","high","high","high","high")
FinalDecision <- c("low","high","low","high","low","high","low","high","high","high")

blood_p <- data.frame(Freq, BP, First, Second, FinalDecision); blood_p
boxplot(BP, main="BP Boxplot")

# create a side-by-side histogram
hist(BP, main="BP Histogram", xlab="BP", ylab="Frequency")
mean(blood_p$BP)

summary(blood_p$BP)

mean(blood_p$BP)
mean(blood_p$Freq)
colMeans(blood_p[,c("Freq", "BP")])
