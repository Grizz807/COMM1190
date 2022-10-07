data <- read.csv("data.csv")

monthly <- data.frame(data$C_Industry,data$C_TotalVoluntarySuperContribution/data$App_Tenure)

mean_total_contribution <- aggregate(monthly[,2],by = list(data$C_Industry), FUN = mean)

barplot(mean_total_contribution[,2],names.arg=mean_total_contribution[,1],
        col=terrain.colors(13), ylim = c(0,250), xlab = "Industry of Customer",
        ylab = " Average Monthly Contribution ($)", main = "Industry vs Average Monthly Contributions")


