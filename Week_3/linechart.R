# 1. Read CSV data
df <- read.csv("SalesData.csv", stringsAsFactors = FALSE)

# 2. Prevent scientific notation
options(scipen = 100)

# 3. Define months and extract each store’s data
months   <- c("April", "May", "June", "July", "August")
shibuya  <- as.numeric(df[df$store.name == "Shibuya",   months])
otemachi <- as.numeric(df[df$store.name == "Otemachi",  months])
shinjuku <- as.numeric(df[df$store.name == "Shinjuku",  months])

# 4. Compute y‐axis range with padding
y_min <- min(shibuya, otemachi, shinjuku) * 0.95
y_max <- max(shibuya, otemachi, shinjuku) * 1.05

# 5. Open PNG device
png("linechart.png")


# 7. Plot Shibuya (black solid)
plot(
  x      = 1:length(months),
  y      = shibuya,
  type   = "o",
  pch    = 1,
  lty    = 1,
  col    = "black",
  xaxt   = "n",
  xlab   = "",
  ylab   = "Sales",
  main   = "Changes in sales",
  ylim   = c(y_min, y_max)
)

# 8. Add Otemachi (red dashed)
lines(
  x    = 1:length(months),
  y    = otemachi,
  type = "o",
  pch  = 2,
  lty  = 2,
  col  = "red"
)

# 9. Add Shinjuku (blue dotted)
lines(
  x    = 1:length(months),
  y    = shinjuku,
  type = "o",
  pch  = 3,
  lty  = 3,
  col  = "blue"
)

# 10. Custom x‐axis
axis(1, at = 1:length(months), labels = months)

# 11. Legend with matching colors
legend(
  "bottomright",
  legend = c("Shibuya", "Otemachi", "Shinjuku"),
  col    = c("black", "red", "blue"),
  pch    = c(1, 2, 3),
  lty    = c(1, 2, 3),
  bty    = "o"
)

# 12. Close device
dev.off()
