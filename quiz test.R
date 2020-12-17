csv_data <- read.csv("hw1_data.csv", header = TRUE,)
csv_data

# extract the first two rows of the data frame and print them on the console
csv_data[1:2,]

# number of rows in this data
nrow(csv_data)

# the last two rows
csv_data[152:153,] #rougue method.

# the last two rows using the tail() method
tail(csv_data, 2)

# the value of ozone in the 47th row
csv_data[47,1]
csv_data[47, "Ozone"]

# how many missing values in the ozone column
missing_values = subset(csv_data, is.na(Ozone))
nrow(missing_values)

# mean of the Ozone column exclude missing values
# step 1 exclude missing values
new_Ozone <- csv_data[complete.cases(csv_data),]
# gets the mean of all columns
apply(new_Ozone,2,mean)

# method 2
sub = subset(csv_data, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean)


# Extract the subset of rows of the data frame where,
# Ozone values are above 31 and Temp values are above 90. 
sub <- subset(csv_data, Ozone > 31 & Temp > 90, select = Solar.R)
sub
# What is the mean of Solar.R in this subset?
apply(sub, 2, mean)

#What is the mean of temp when month is equal to 6
sub <- subset(csv_data, Month==6, select = Temp)
sub
apply(sub,2,mean)

# the maximun Ozone value on May i.e month=5
sub <- subset(csv_data, Month == 5 & !is.na(Ozone), select = Ozone)
sub
apply(sub, 2, max)
