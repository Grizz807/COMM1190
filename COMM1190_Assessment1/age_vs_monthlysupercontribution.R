data <- read.csv("data.csv")


ages <- subset(data, select = c(C_Age))

supercontribution <- data$C_TotalVoluntarySuperContribution

total_months <- data$App_Tenure

per_month <- supercontribution / total_months

plot(data$C_Age,per_month, type = 'p',, xlab = "Age of Customers", ylab= "Average monthly contribution ($)", main = "Age vs Monthly Contributions")
lines(lowess(data$C_Age,per_month),col = "red")

