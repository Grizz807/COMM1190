#import data
data<-read.csv("weekly_sales_flavours.csv")
data

#Create a subset data for students
student <- subset(data, Customers=="Student")
student

#Categories Flavours
student_fruit <- subset(student, select = c(Apricot, Banana, Cherry.Almond, Ginger, Lime.Coconut, Mango, Pure.Coconut, Red.Bean))
student_caramel <- subset(student, select = S.Caramel)
student_chocolate <- subset(student, select = c(Chocolate, Mint.Choco))
student_tea_coffee <- subset(student,select = c(Chai.Tea, Green.Tea, Coffee))
student_nut <- subset(student, select = c(Hazelnut,Pistachio))

#Sum each flavour
student_fruit_sum <- sum(student_fruit)
student_caramel_sum <- sum(student_caramel)
student_chocolate_sum <- sum(student_chocolate)
student_tea_coffee_sum <- sum(student_tea_coffee)
student_nut_sum <- sum(student_nut)

student_flavour_sales <- c(student_fruit_sum, student_caramel_sum, student_chocolate_sum, student_tea_coffee_sum, student_nut_sum)
col_names <- c("Fruit", "Caramel", "Chocolate", "Tea/coffee", "Nut")

student_flavour_sales
col_names

barplot(student_flavour_sales, las = 2, col = "lightblue", ylim = c(0,50000), names.arg = col_names)
title(main = "Student Sales - Flavour Groups")

barplot(matrix(c(staff_fruit_sum, student_fruit_sum, staff_caramel_sum , student_caramel_sum, staff_chocolate_sum, student_chocolate_sum, staff_tea_coffee_sum , student_tea_coffee_sum, staff_nut_sum, student_nut_sum ), nr = 2 ) , beside=T, col = c("red" , "blue"), ylim = c(0,50000), names.arg = col_names)
title(main = "Staff vs Student Sales - Flavour Groups")
legend("topright",c("Staff", "Students"), col = c("red", "blue"), pch = c(15,15))


