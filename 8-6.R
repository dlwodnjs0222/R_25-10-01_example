ggplot(df, aes(x = month, y = rain)) +
  geom_bar(stat = "identity", 
           width = 0.7,
           fill = "steelblue") + 
  ggtitle("월별 강수량") + 
  theme(plot.title = element_text(size = 25, face = "bold", 
                                  colour = "steelblue")) + 
  labs(x = "월", y = "강수량") +
  coord_flip()
