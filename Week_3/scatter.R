df <- read.csv("HeightWeightData.csv")

png("scatter.png")

plot(
    df$height,
    df$weight,
    xlab = "height",
    ylab = "weight",
    main = "Scatter Plot of Weight and Height"
)



dev.off()