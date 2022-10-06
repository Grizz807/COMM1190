data <- read.csv("data.csv")

education_data <- aggregate(data$C_TotalVoluntarySuperContribution, 
  by = list(data$C_HomeOwnershipStatus), FUN = mean)

barplot(education_data[,2],names.arg=education_data[,1],col="darkgreen",
  xlab = "Level of Education", ylab = "Total Super Contribution ($)", 
  main = "Education vs Super Contribution")

