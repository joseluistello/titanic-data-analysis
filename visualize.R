## 
ggplot(data, aes(Sex, colour = Pclass)) + geom_bar() +
  labs(title = "",
       subtitle = '',
       x = '',
       y =  "") +
  theme_minimal() +
  scale_color_brewer() 


