d <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

d >= 5
d[d>5]

sum(d>5)
sum(d[d>5])

condi <- d > 5 & d < 8
d[condi]
