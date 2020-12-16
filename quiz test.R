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

# missing values in the ozone column
