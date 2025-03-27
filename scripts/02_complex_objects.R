# Complex objects ----
install.packages("tidyverse")
library(tidyverse)

# Matrices ----
matrix1 <- matrix(1:12, nrow = 4, ncol = 3)
matrix1
matrix1 + 1
matrix2 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,"a"), nrow = 4, ncol = 3)
matrix2
matrix2 + 1
matrix3 <- matrix1
matrix1 + matrix3
matrix1[1,2]
matrix3[1,]
matrix1[c(1, 2),]
matrix1[matrix1 > 8]
matrix4 <- matrix(3:14, nrow = 4, ncol = 3)
matrix1[matrix4 > 8]
matrix5 <- cbind(matrix1, 1:4)
matrix6 <- rbind(matrix1, 1:3)

## Exercise: Create a numeric matrix with dimensions 6:6. Then:
# - extract the observation from the third row, second column,
# - extract all observations from the third row,
# - extract all observations with values below 3,
# - calculate the mean using the mean() function.


# Data frame (data.frame; tibble) ----
x <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c("a", "b", "c"))
x
x <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c("a", "b", "c", "d"))
class(x)

x$a

View(x)

x$a[2]

y <- tibble(d = c(4,5,6), e = c(4,4,3), z = c("a", "b", "c"))
y
class(y)

xy <- cbind(x, y)

y1 <- y[,-3]
y1
x1 <- x[,-3]
x1

x1 + y1

sqrt(x1)

names(x) <- c("first", "second", "third")
x

## Exercise: Create a data frame with 4 columns, two numeric and two character. Name the character columns "column1" and "column2". Then:
# - sort the observations in one of the numeric columns from largest to smallest using the sort() function,
# - create a character vector to extract the character columns.

# Lists ----

x <- list(a = c(1,2,3), b = c("a", "b"))
x
y <- list(v = list(a = c(56, 4, 12), n = "z"), b = "B") 
y

y[1]
y[[1]]

y$v$a[1]

## Exercise: Create a list containing four objects of different sizes, then remove two of them.