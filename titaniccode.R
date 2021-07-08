library(tidyverse)


## Load Data


train <- read.csv("data/train.csv", header = TRUE)
test <- read.csv("data/test.csv", header = TRUE)

str(train)

str(test)

## Create new csv from test and train

test <- data.frame(test[1], Survived = rep("NA", nrow(test)), test[ , 2:ncol(test)])

data <- rbind(train, test)

write.csv(data, "./data/data.cvs", row.names = FALSE )


## Analysis and clean 

summary(data)

length(data$PassengerId)

length(unique(data$PassengerId))

g <- ggplot(data, aes(Sex, fill = Pclass))

g + geom_bar()

data$Survived <- as.factor(data$Survived)
table(data$Survived, dnn = "Number of Survived in the Data")

prop.table(table(as.factor(train$Survived), dnn = "Survive and death ratio in the Train"))

str(data)
data$Pclass <- as.factor(data$Pclass)

table(data$Pclass, dnn = "Pclass values in the Data")



prop.table(table(as.factor(data$Pclass), dnn = "Pclass percentage in the Data"))
