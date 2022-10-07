data <- read.csv("data.csv")

home_data <- aggregate(data$C_TotalVoluntarySuperContribution, 
  by = list(data$C_HomeOwnershipStatus), FUN = mean)

barplot(home_data[,2],names.arg=home_data[,1],col="darkgreen",
  ylab = "Home Ownership", xlab = "Average Total Super Contribution ($)", 
  main = "Home Ownership vs Super Contribution", horiz = "true", xlim = c(0,2500))

