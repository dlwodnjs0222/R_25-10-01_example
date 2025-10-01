x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)

m1 <- cbind(x,y)
m1

m2 <- rbind(x,y)
m2

m3 <- rbind(m2,x)
m3

m4 <- cbind(z, x)
m4
