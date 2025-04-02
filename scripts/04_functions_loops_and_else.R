library(tidyverse)

#Creating functions ----

degrees <- sample(1:360, 50)

#Converting degrees to radians
degrees_to_rad <- function(x) {
  (x * pi)/180
}

degrees_to_rad(degrees)

#Task: create a vector of length 50 containing angle measures in radians (range from 0 to 2*pi) using the seq() function. Then create a function that converts values from radians to degrees.

#Using loops ----

xyz <- tibble(
  x = sample(1:10, 5),
  y = sample(1:10, 5),
  z = sample(1:10, 5)
)

mean(xyz$x)
mean(xyz$y)
mean(xyz$z)

mean_along <- vector("numeric", ncol(xyz))

for (i in seq_along(xyz)) {
  mean_along[i] <- mean(xyz[[i]])
}

mean_along

#Task: create a data frame with dimensions 10x5 containing numerical data. Then, using a for loop, calculate the median for each column.

#Conditional expressions -----

diameter1 <- 500
diameter2 <- 44
diameter3 <- 0.5

if (diameter1 > 63) {
  "sand"
}

if (diameter2 > 63) {
  "sand"
}

if (diameter2 > 63) {
  "sand"
} else {
  "dust"
}

if (diameter1 > 63) {
  "sand"
} else {
  "dust"
}

if (diameter3 > 63) {
  "sand"
} else if (diameter3 > 1) {
  "dust"
} else {
  "clay"
}

#Using conditional expressions with loops

grain_diameters <- sample(c(sample(seq(0.01, 0.99, length.out = 100), 5),
                            sample(1:63, 4),
                            sample(64:2000, 3),
                            3500))
grain_size <- vector("character", length(grain_diameters))

for (i in seq_along(grain_diameters)) {
  grain_size[[i]] = if (grain_diameters[[i]] > 2000) {
    "gravel"
  } else if (grain_diameters[[i]] > 63 & grain_diameters[[i]] < 2000) {
    "sand"
  } else if (grain_diameters[[i]] > 1 & grain_diameters[[i]] < 63) {
    "dust"
  } else {
    "clay"
  }
}

grain_size