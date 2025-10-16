setwd ("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24100548_PS_Lab_10\\IT24100548")

## (i) 
## H0: P(A) = P(B) = P(C) = P(D) = 0.25   (choices are equally likely)
## H1: At least one snack type has probability ≠ 0.25 (not all equal)

counts <- c(A = 120, B = 95, C = 85, D = 100)
p0 <- rep(1/4, 4)


# (ii)
chisq_res <- chisq.test(x = counts, p = p0)

cat("Observed counts:\n"); print(counts)
cat("\nExpected counts (under H0):\n"); print(chisq_res$expected)

cat("\nChi-squared statistic:", unname(chisq_res$statistic),
    "\nDegrees of freedom:", unname(chisq_res$parameter),
    "\nP-value:", chisq_res$p.value, "\n")

# (iii) 
alpha <- 0.05
if (chisq_res$p.value < alpha) {
  cat("\nDecision: Reject H0 at 5% significance.\n",
      "Conclusion: There IS evidence that snack choices are not equally likely.\n")
} else {
  cat("\nDecision: Fail to reject H0 at 5% significance.\n",
      "Conclusion: There is NOT enough evidence to say snack choices differ from equal likelihood.\n")
}

expected <- sum(counts) * p0
X2_manual <- sum((counts - expected)^2 / expected)
cat("\nManual check of X^2:", X2_manual, "\n")
