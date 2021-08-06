### Convert data to factors 


train$Survived <- as.factor(train$Survived)
train$Embarked <- as.factor(train$Embarked)
train$Sex <- as.factor(train$Sex)
train$Pclass <- as.factor(train$Pclass)


test$Embarked <- as.factor(test$Embarked)
test$Sex <- as.factor(test$Sex)
test$Pclass <- as.factor(test$Pclass)



### Drop NA values for bind

test <- data.frame(test[1], Survived = rep("NA", nrow(test)), test[ , 2:ncol(test)])

### Bind data sets 

data <- rbind(train, test)

### Write new CV (product of BIND)

write.csv(data, "./data/interim/data.cvs", row.names = FALSE )