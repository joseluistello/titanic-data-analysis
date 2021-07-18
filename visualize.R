ggplot(data, aes(Parch)) + geom_bar() +
  labs(title = "",
       subtitle = '',
       x = '',
       y =  "") +
  theme_minimal() +
  scale_color_brewer(palette = "Dark2") 


