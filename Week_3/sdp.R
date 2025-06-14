df <- read.csv("practice3-4-2.csv")

x <- df$Export

sdp <- function(x){
return(sqrt(var(x)))
}



print(sdp((x)))