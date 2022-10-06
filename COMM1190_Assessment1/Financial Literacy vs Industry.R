data <- read.csv("data.csv")

x <- table(data$C_FinancialLiteracy,data$C_Industry)
percentages <- prop.table(x,margin=2)*100

barplot(percentages)
