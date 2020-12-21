list.files("diet_data")
andy <- read.csv("diet_data/Andy.csv")
head(andy)
length(andy$Day) # nrow(andy)
dim(andy)
str(andy)
summary(andy)
names(andy)

# Andy's starting weight
andy[1,"Weight"]
# Andy's weight in 30 days
andy[30, "Weight"]
andy[which(andy$Day == 30),"Weight"]
