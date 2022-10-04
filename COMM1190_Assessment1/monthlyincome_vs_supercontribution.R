data <- data.csv

plot(data$C_MonthlyIncome,data$C_TotalVoluntarySuperContribution, type = 'p')
lines(lowess(data$C_MonthlyIncome,data$C_TotalVoluntarySuperContribution),col = "red")



