for (i  in 1:4) {
  print(i) # prints 1,2,3,4
}

x <- c("a","b","c","d")
for (i in 1:4){
  print(x[i]) #a,b,c,d
}

for (i in seq_along(x)) { # takes a vector as input,and creates 
  # an interger sequence thats equal to the length of the vector
  print(x[i])
}

for (letter in x) {
  print(letter)
}

for (i in 1:4) print(x[i])


# Nested for loops
x <- matrix(1:6, 2,3)
for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}
