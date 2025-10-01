sum <- 0

for (n in 1:10) {
  if(n %% 2==0) next
  sum <- sum + n
}

sum
