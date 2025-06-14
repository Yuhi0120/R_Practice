# 1. Read CSV data
df <- read.csv("SalesData.csv", stringsAsFactors = FALSE)

# 2. Prevent scientific notation
options(scipen = 100)

# 3. Determine ordering (largest April sales first)
ord  <- order(df$April, decreasing = TRUE)
vals <- df$April[ord]            # sorted slice sizes
labs <- df$store.name[ord]       # sorted labels

print(ord)
print(vals)
print(labs)

# 4. Open PNG device
png("piechart.png")


# 6. Draw pie chart with sorted values
pie(
  x          = vals,
  labels     = labs,
  main       = "Proportion of sales in April",
  clockwise = T

)

# 7. Close device
dev.off()
