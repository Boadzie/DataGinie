# Data preprocessing

dataset <- read.csv("electricity-customers-southern-ghana.csv")

#Taking care of missing values
dataset$HV.VOLTAGE = ifelse(is.na(dataset$HV.VOLTAGE), ave(dataset$HV.VOLTAGE, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$HV.VOLTAGE)

dataset$NUMBER.OF.CUSTOMERS = ifelse(is.na(dataset$NUMBER.OF.CUSTOMERS), ave(dataset$NUMBER.OF.CUSTOMERS, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$NUMBER.OF.CUSTOMERS)

# Encoding Categorical data 
dataset$Country = factor(dataset$Country, levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2, 3))

# encoding for the Purchased column
dataset$Purchased = factor(dataset$Purchased, levels = c('No', 'Yes'),
                        labels = c(0, 1))


# Splitting the dataset into Training Set and Test Set
#install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)

training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


# Feature Scaling
training_set[, 2:3] = scale(traing_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])




