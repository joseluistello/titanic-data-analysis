


str(data)
glimpse(data)


### Convert to factor

data$Survived <- as.factor(data$Survived)
data$Embarked <- as.factor(data$Embarked)
data$Sex <- as.factor(data$Sex)
data$Pclass <- as.factor(data$Pclass)

### Convert to number




length(data$Pclass)

length(unique(data$Pclass))





table(data$Embarked, dnn = "Number of Survived in the Data")

prop.table(table(as.factor(train$Survived), dnn = "Survive and death ratio in the Train"))

str(data)
data$Pclass <- as.factor(data$Pclass)

table(data$Pclass, dnn = "Pclass values in the Data")



prop.table(table(as.factor(data$Pclass), dnn = "Pclass percentage in the Data"))
