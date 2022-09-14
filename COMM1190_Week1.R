library(readr)
staff = read.csv("staff_weekly.csv")

#Number of columns and rows of spreadsheet
ncol(staff)
nrow(staff)

#Extract column 1,10,20 and rows 1 to 5
staff[c(1,10,20),1:5]


#Extract from column 3 onwards
staff[,3:ncol(staff)]

#Extract from the column Mango
newdata <- subset(staff, select=c(Mango))
newdata
