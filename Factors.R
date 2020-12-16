x <- factor(c("Yes","Yes","no","yes","no"))
x
table(x)
unclass(x)
attr(x,"levels")

vector("logical", length = 5)
x <- 4
class(x)

y <- c(4, "a", TRUE)
class(y)

z <- list(2, "a","b", TRUE)
z[[1]]

x <- 1:4
y<- 2
x+y

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>10] <- 4
x
x[x>10]==4
x
