#Calculate the Geomean
geomean <- function(x){
    p <- prod(x)
    len <- length(x)
    return(p^(1/len))
}