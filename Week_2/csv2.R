# Read CSV
data <- read.csv("mini-exam2-3.csv")

# machine
first_mean <- mean(data$Weight[data$Machine == "1"])
second_mean <- mean(data$Weight[data$Machine == "2"])

#worker

a_mean <- mean(data$Weight[data$Worker == "A"])
b_mean <- mean(data$Weight[data$Worker == "B"])

#Result
cat("1", round(first_mean,2),"\n")
cat("2", round(second_mean,2),"\n")
cat("A", round(a_mean,2),"\n")
cat("B", round(b_mean,2),"\n")