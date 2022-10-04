msft <- read.csv("MSFT.csv")
MSFT_price <- msft[,6]
MSFT_returns <- diff(log(MSFT_price))
plot(MSFT_price, type = "l", col = "blue")

year_labels <- c("2001", "2003", "2005", "2007", "2009", "2011", "2013", "2015", "2017", "2019", "2021")
year_index <- c(1, 502, 1005, 1508, 2012, 2516, 3018, 3522, 4026, 4528, 5031) 
msft[year_index,]
plot(MSFT_price, type = "l", ann = FALSE, xaxt = "n", col = "blue")
title(xlab = "year", ylab = "Microsoft", main = "Microsoft price")
axis(1, at = year_index, labels = year_labels)

year_labels <- c("2001", "2003", "2005", "2007", "2009", "2011", "2013", "2015", "2017", "2019", "2021")
year_index <- c(1, 502, 1005, 1508, 2012, 2516, 3018, 3522, 4026, 4528, 5031) 
msft[year_index,]
plot(MSFT_returns, type = "l", ann = FALSE, xaxt = "n", col = "black")
title(xlab = "year", ylab = "Microsoft", main = "Microsoft returns")
axis(1, at = year_index, labels = year_labels)
