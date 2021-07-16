


str(data)


### Lets change data type - Survived_Embarked_ 


length(data$PassengerId)

length(unique(data$PassengerId))



data$Survived <- as.factor(data$Survived)
table(data$Survived, dnn = "Number of Survived in the Data")

prop.table(table(as.factor(train$Survived), dnn = "Survive and death ratio in the Train"))

str(data)
data$Pclass <- as.factor(data$Pclass)

table(data$Pclass, dnn = "Pclass values in the Data")



prop.table(table(as.factor(data$Pclass), dnn = "Pclass percentage in the Data"))
