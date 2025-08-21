setwd("C:/Users/it24103228/Desktop/IT24103228")

# Exercise 1: 
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

# View the data frame
head(branch_data)

# Exercise 2: 
str(branch_data)

# Exercise 3: 
boxplot(branch_data$Sales_X1, main = "Boxplot of Sales", ylab = "Sales")


# Exercise 4:
summary(branch_data$Advertising_X2)

IQR(branch_data$Advertising_X2)


# Exercise 5: 
find_outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  iqr <- q3 - q1
  lower_bound <- q1 - 1.5 * iqr
  upper_bound <- q3 + 1.5 * iqr
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

years_outliers <- find_outliers(branch_data$Years_X3)
print(years_outliers)

