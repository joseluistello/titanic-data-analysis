


str(data)


### Lets change data type 


length(data$PassengerId)

length(unique(data$PassengerId))

ggplot(data, aes(Sex, fill = Pclass)) + geom_bar() +
  labs(title = "",
       subtitle = 'ssssss',
       x = '',
       y =  "SSSSSSSS") +
  theme_minimal() +
  scale_color_brewer(palette = "Dark2") 

data$Survived <- as.factor(data$Survived)
table(data$Survived, dnn = "Number of Survived in the Data")

prop.table(table(as.factor(train$Survived), dnn = "Survive and death ratio in the Train"))

str(data)
data$Pclass <- as.factor(data$Pclass)

table(data$Pclass, dnn = "Pclass values in the Data")



prop.table(table(as.factor(data$Pclass), dnn = "Pclass percentage in the Data"))
