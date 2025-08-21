setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24100548")
getwd()

##1
branch_data <- read.csv("Exercise.txt", header = TRUE)

##2
str(branch_data)

##3
boxplot(branch_data$Sales_X1,
        main = "Boxplot of Sales",
        outline = TRUE,
        outpch=8,
        horizontal = TRUE)

##4
summary(branch_data$Advertising_X2)
fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

##5
get.outliers <- function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5 * iqr
  lb <- q1 - 1.5 * iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers: ", paste(sort(z[z < lb | z > ub]), collapse = ", ")))
}

get.outliers(branch_data$Years_X3)
