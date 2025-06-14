df <- read.csv("practice3-4-2.csv")

cc = cor(df$Export, df$Import)

print(cc)