# 1. CSV を読み込む
df <- read.csv("mini-exam3-2.csv", stringsAsFactors = FALSE)

# 2. Machine ごとに subset で分ける
w1 <- subset(df, Machine == 1)$Weight
w2 <- subset(df, Machine == 2)$Weight

# 3. Machine1 のヒストグラムを PNG で出力
png("hist_machine1.png", width = 800, height = 600)
hist(
  w1,
  main      = "Histogram of Weight for Machine 1",
  xlab      = "Weight",
  ylab      = "Frequency"
)
dev.off()

# 4. Machine2 のヒストグラムを PNG で出力
png("hist_machine2.png", width = 800, height = 600)
hist(
  w2,
  main      = "Histogram of Weight for Machine 2",
  xlab      = "Weight",
  ylab      = "Frequency",
)
dev.off()
