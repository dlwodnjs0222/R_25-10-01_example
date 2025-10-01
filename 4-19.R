myfunc <- function(x, y){
  val.sum <- x + y
  val.mul <- x * y
  return(list(sum = val.sum, mul = val.mul))
}

result <- myfunc(5, 8)
s <- result$sum
m <- result$mul

cat('5 + 8 =', s, '\n')
cat('5 * 8 =', m, '\n')
