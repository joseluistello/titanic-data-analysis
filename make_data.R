library(tidyverse)
library(ggthemes)


## Load Data

train <- read.csv("data/raw/train.csv", header = TRUE)
test <- read.csv("data/raw/test.csv", header = TRUE)

str(train)

str(test)

## Drop all values for test 

test <- data.frame(test[1], Survived = rep("NA", nrow(test)), test[ , 2:ncol(test)])

## Create new csv from bind test and train

data <- rbind(train, test)

write.csv(data, "./data/interim/bind_data.cvs", row.names = FALSE )


## Analysis and clean 



