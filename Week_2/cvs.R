# Read CSV
data <- read.csv("practice2-3.csv")

# Mean
m_mean <- mean(data$Score[data$Gender == "Male"])
f_mean <- mean(data$Score[data$Gender == "Female"])

#cLass

a_mean <- mean(data$Score[data$Class == "A"])
b_mean <- mean(data$Score[data$Class == "B"])

#Result
cat("Male", round(m_mean,2),"\n")
cat("femail", round(f_mean,2),"\n")
cat("A", round(a_mean,2),"\n")
cat("B", round(b_mean,2),"\n")