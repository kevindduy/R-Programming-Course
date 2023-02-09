#Module # 4 Programming structure in R 
#The following data was collected by the local hospital. This data set contains 5 variables based on observation of 8 patients. In addition to the measurements of the patients checking in to the hospital that night, this data provides the patients' histories regarding the frequency of their visits to the hospital in the last 12 months. This data displays the measurement of blood pressure, first assessment by general doctor (bad=1, good =0) titled "first," the second assessment by external doctor (called "second"), and the last row provides the head of the emergency unit's decision regarding immediate care for the patient based on the values 0 or 1 (low = 0, high =1).
Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,.3,0.4,0.9,0.2)
# frequency of hospital visits by patients during 12 month period
BP <- c(103,87,32,43,59,109,78,205,135,178) # blood pressure of each individual patient 
First <- c(1,1,1,1,0,0,0,0,NA,1)# first doctor evaluation of BP, where 1=bad and 0=good
Second <- c(0,0,1,1,0,0,1,1,1,1) # second and final evaluation of BP, where 0=low and 1=high
Final <- c(0,1,0,1,0,1,0,1,1,1)
hospital.df <- data.frame(Freq,BP,First,Second,Final) # contain everything under hospital data.frame. 

#You turn to create p boxplot (boxplot(x, ...)) and histogram ((hist(x, ...)) 
boxplot(hospital.df$BP)
hist(hospital.df$BP)
