speed <- cars[,1]
pred <- w * speed + b
pred

compare <- data.frame(pred, cars[,2], pred - cars[,2])
colnames(compare) <- c('예상', '실제', '오차')
head(compare)
