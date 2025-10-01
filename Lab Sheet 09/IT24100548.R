setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24100548")
getwd()

# Exercise

# Q - 1
# (part i)
b_time <- rnorm(25, mean = 45, sd = 2)
print(b_time)

# (part ii)
t_result <- t.test(b_time, mu = 46, alternative = "less")
print(t_result)


# Conclusion: Since p value is less than 0.05, Reject H0 at 5% level of significance.There for we can conclude that the average baking time is less than 46 minutes.