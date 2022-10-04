
data <- read.csv("data.csv")


mean_total_contribution <- aggregate(data$C_TotalVoluntarySuperContribution,by = list(data$C_Industry), FUN = mean)

barplot(mean_total_contribution[,2],names.arg=mean_total_contribution[,1],col="green")
data
