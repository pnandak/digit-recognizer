# makes the random forest submission

library(randomForest)

train <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/train.csv", header=TRUE)
test <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/test.csv", header=TRUE)

ncol(train)
ncol(test)

labels <- as.factor(train[,1])
train <- train[,-1]

rf <- randomForest(train, labels, xtest=test, ntree=1000)
predictions <- levels(labels)[rf$test$predicted]

write(predictions, file="rf_benchmark.csv", ncolumns=1)
