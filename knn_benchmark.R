library(FNN)

train <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/train.csv", header=TRUE)
test <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/test.csv", header=TRUE)

labels <- train[,1]
train <- train[,-1]

results <- (0:9)[knn(train, test, labels, k = 10, algorithm="cover_tree")]

write(results, file="knn_benchmark.csv", ncolumns=1)
