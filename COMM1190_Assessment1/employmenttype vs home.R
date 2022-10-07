data <- read.csv("data.csv")

employment <- aggregate(data$C_MonthlyFamilyIncome,by = list(data$C_HomeOwnershipStatus), FUN = mean)
employment

tableemploy <- table(data$C_EmploymentType, data$C_HomeOwnershipStatus)
tableemploy

barplot(tableemploy, ylim = c(0,600), xlab = "Home Ownership", 
        ylab = "Number of people", legend = c("Casual","Permanent"), 
        main = "Employment type vs Home Ownership", col = c("maroon","lightblue"))

        
        
        