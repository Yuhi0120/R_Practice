A <- matrix(c(
    8,8,2,8,4,
    7,1,2,5,2,
    4,10,6,6,6,
    9,2,4,6,8,
    1,9,6,9,7
),nrow = 5, byrow = T)

b <-c(1,2,3,4,5)

print(round(solve(A,b),3))