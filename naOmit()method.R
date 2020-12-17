dataCollected <- read.csv("hw1_data.csv", header = TRUE)
dataCollected

completeRecords <- na.omit(dataCollected)
completeRecords

dropRecords <- dataCollected[complete.cases(dataCollected),]
dropRecords

fullRecords <- dataCollected[!complete.cases(dataCollected),]
fullRecords

# I set a new data frame
x <- data.frame(a=c(1,2,3), b=c(4,NA,5), c=c(10,9,8))
x

colMeans(x, na.rm = TRUE, dims = 1)
rowSums(x, na.rm = FALSE, dims = 1)


