library(ggplot2)
library(tidyr)
chinaIncome <- read.csv("ChinaIncome.csv"); chinaIncome

ggplot(chinaIncome, aes(x = X, y = agriculture)) +
  geom_line() +
  geom_line(aes(y = industry), color = "red") +
  geom_line(aes(y = commerce), color = "blue") +
  xlab("Year") +
  ylab("Income") +
  ggtitle("Income by Sector")

chinaIncome_long <- gather(chinaIncome, key = "Sector", value = "Income", -X)

ggplot(chinaIncome_long, aes(x = Sector, y = Income, fill = Sector)) +
  geom_bar(stat = "identity") +
  xlab("Sector") +
  ylab("Income") +
  ggtitle("Income by Sector") +
  scale_fill_manual(values = c("#FFA500", "#008080", "#00FF7F", "#800080", "#FFC0CB"))


ggplot(chinaIncome, aes(x = agriculture, y = industry, color = X)) +
  geom_point() +
  xlab("Agriculture Income") +
  ylab("Industry Income") +
  ggtitle("Income by Year") +
  scale_color_gradient(low = "#FFFFFF", high = "#FFA500")
