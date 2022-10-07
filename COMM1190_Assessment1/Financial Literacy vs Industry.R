data <- read.csv("data.csv")

x <- table(data$C_FinancialLiteracy,data$C_Industry)
percentages <- prop.table(x,margin=2)*100


barplot(percentages[c(1,3,2),], col = topo.colors(3, alpha = 0.5), xlab = "Industry of Customer",
        ylab= "Propertion of Financial Literacy (%)", main = "Industry vs Financial Literacy", legend = c("High","Medium","Low"))

