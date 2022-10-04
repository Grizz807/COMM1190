




SP500 <- read.csv(file = "SP500.csv")
SP500_price <- SP500[, 6]
SP500_returns <- diff(log(SP500_price))

MSFT <- read.csv(file = "MSFT.csv")
MSFT_price <- MSFT[, 6]
MSFT_returns <- diff(log(MSFT_price))


plot(SP500_returns, MSFT_returns, pch = 19, frame = FALSE, ann = FALSE)
title(xlab = "S&P 500 returns", ylab = "Microsoft returns", main = "S&P 500 returns - Microsoft returns relationship")

lines(lowess(SP500_returns, MSFT_returns), col = "red")
cor(SP500_returns, MSFT_returns)

