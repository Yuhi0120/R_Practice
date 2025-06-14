# Read csv
df <- read.csv("SalesData.csv", stringsAsFactors = FALSE)

options(scipen = 100)

png("barchart.png", width = 800, height = 600)

par(mar = c(5, 7, 5, 1))

barplot(
  height    = df$April,
  names.arg = df$store.name,
  main      = "Sales in April",
  las       = 1
)

dev.off()
