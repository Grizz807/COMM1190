library(moments)
msft <- read.csv("MSFT.csv")
msft_price <- msft[,5]
msft_returns <- diff(log(msft_price))

mean(msft_returns)
var(msft_returns)
sd(msft_returns)
min(msft_returns)
max(msft_returns)
skewness(msft_returns)
kurtosis(msft_returns)

