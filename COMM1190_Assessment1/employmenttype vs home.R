data <- read.csv("data.csv")

employment <- aggregate(data$C_MonthlyFamilyIncome,by = list(data$C_HomeOwnershipStatus), FUN = mean)
employment

barplot(data$C_MonthlyFamilyIncome, names.arg = list(data$C_HomeOwnershipStatus))
