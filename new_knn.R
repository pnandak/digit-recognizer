#knn with new features

library(FNN)

fulltrain <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/train.csv", header=TRUE)
fulltest <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/test.csv", header=TRUE)

numzeros <- function(r)
  {
    a <- r==0    
    length(r[(a)])
  }

#fulltest$zeros <- apply(fulltest,1,numzeros)

n <- 5000
test <- fulltrain[(n+1) : (2*n),]
train <- fulltrain[1:n,]

labels <- train[,1]
train <- train[,-1]
ans <- test[,1]
test <- test[,-1]

results <- (0:9)[knn(train, test, labels, k = 10, algorithm="cover_tree")]
t <- results==ans
print(length(t[(t)])/n)

