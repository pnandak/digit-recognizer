#trial file for R using ESS

library(FNN)

print('hello there crap');

train <- read.csv("/Users/pranav/personal/kaggle/recognizer/data/train.csv")

if (T)
  {
    print("its true R works!! Hoorray!!")
  }else
  {
    print("crap!")
  }

for (i in c("hello", "my baby", "hello", "my honey", "hello", "my ragtime girl"))
  {
    print(i)
  }


getwd()

setwd(getwd())

data(mtcars)

mtcars[1:2,]

mtcars[mtcars[,"cyl"] == 6,"hp"] <- 777

mtcars[mtcars[,"hp"]==777,]

p <- c("hello", "there", "honey")

paste("crap" , p)
?outer

x <- 1:9; names(x) <- x

data(attitude)

attitude

mean(attitude$critical)

summary(attitude$critical)

class(attitude)

table(mtcars$cyl)

fix(mtcars)

mtcars <- transform(mtcars, "wattage" = .4 * mpg)

mtcars[,"new.wattage"] <- mtcars[,"wattage"] * 4 

a <- data.frame("column1" = c("a", "b", "c"), column2 = c("pranav", "modi", "good"))
b <- data.frame("column1" = c("a", "b", "d"), column2 = c("jimmy", "mcnullty", "evil"))
c <- merge (a, b , by = "column1",all=T)

data(mtcars)

aggregate(mpg ~ gear, mtcars, mean)
tapply(mtcars$mpg, mtcars$gear, mean)

mysum <- function(n1, n2)
  {
    n1 + n2
  }

k <- mysum(3,4)

x <- 1:10
y <- 2:11
plot(x,y,xlim = c(1,20),ylim = c(1,20), xlab = "the x label", ylab = "the y label", main = "fucking title")

colnames(mtcars)
rownames(mtcars)

nrow(mtcars)
ncol(mtcars)


fib <- function(n)
{
  ifelse(n < 2, n, fib(n - 1) + fib(n - 2))
}
start <- Sys.time()
fib(25)
end <- Sys.time()
end - start


inc <- function(n1)
  {
    n1 + 1
  }

#to see the heatmap (test has 28*28 columns)

tt <- data.matrix(test[1,2:ncol(test)])

dim(tt) <- c(28,28)

heatmap(tt,Rowv=NA,Colv=NA,col=cm.colors(256),scale="column",margins=c(5,10))
