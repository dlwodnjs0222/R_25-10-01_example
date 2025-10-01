for (n in 1:9) {
  cat('2 *', n, '=', 2*n, '\n')
}


for (n in 1:9) {
  cat('\n')
  for (m in 2:9) {
    cat(n ,'*', m, '=', n*m, '\n')
  }
}
