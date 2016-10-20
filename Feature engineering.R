rm(list=ls(all=TRUE))
setwd('C:/Users/Santhosh/Downloads/SocGen/')
train <- read.csv('train.csv')
data <- train[,2:101]

library(TTR)

#Simple Moving average - 14 days

df.names <- paste("sma",1:100,sep="")
sma <- NULL
for (i in 1:100){
  d.frame <- SMA(data[i],n=14)
  sma <- cbind(sma,assign(df.names[i], d.frame))
}

sma <- as.data.frame(sma)

#Exponential Moving average - 14 days
df.names <- paste("ema",1:100,sep="")
ema <- NULL
for (i in 1:100){
  d.frame <- EMA(data[i],n=14)
  ema <- cbind(ema,assign(df.names[i], d.frame))
}
ema <- as.data.frame(ema)
