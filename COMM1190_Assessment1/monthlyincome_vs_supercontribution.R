data <- data.csv

plot(data$C_MonthlyIncome,data$C_TotalVoluntarySuperContribution, type = 'p'
     , xlab = "Monthly Income ($)", ylab = "Total Voluntary Super Contribution ($)",
     main = "Monthly Income vs Super Contribution")
lines(lowess(data$C_MonthlyIncome,data$C_TotalVoluntarySuperContribution),col = "red")



