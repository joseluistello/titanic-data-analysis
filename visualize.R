## For example, we can count and visualize our Sex variable and see the proportion of gender.


table(data$Sex, dnn = "Gender proportion")
prop.table(table(as.factor(data$Sex), dnn = "Gender proportion percent"))



ggplot(data, 
       aes(x = Sex,
           y = ..count.. / sum(..count..))) + 
  geom_bar(fill = "cornflowerblue", 
           color="black") +
  labs(x = "Gender", 
       y = "Percent", 
       title = "Proportion of gender",
       subtitle = "") +
  scale_y_continuous(labels = scales::percent) +
  theme_base()




### We can see the proportion of socio-economic class among sex

ggplot(data, aes(x = Sex, fill = Pclass)) +
  geom_bar(color = "black", 
           position = position_dodge
           (preserve = "single")) +
  labs(x = "Gender",
       y = "Count",
       title = "Passenger socio-economic class",
       subtitle = "Distribution per gender") +
  theme_base()


### Distribution of ages and fill sex 


ggplot(data, aes(Age, fill = Sex)) +
  geom_histogram(color = "black") +
  labs(x = "Age",
       y = "Total",
       title = "Age distribution" ) +
  theme_base()

