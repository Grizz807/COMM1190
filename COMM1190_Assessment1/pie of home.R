data <- read.csv("data.csv")

homeownership <- table(data$C_HomeOwnershipStatus)
homeownership
pie(homeownership)

