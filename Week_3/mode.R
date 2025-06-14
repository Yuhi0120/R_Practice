df <- read.csv("practice3-4-1.csv")

mode <- which.max(table(df$Answer))

print(mode)