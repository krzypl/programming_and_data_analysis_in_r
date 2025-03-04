# R as a Calculator
1 + 1  # Press Ctrl + Enter to display the result
4 * 15
2^2
pi + 1
(1 + 1) * (3 + 8) * 11

# What other ideas for calculations?

# Creating Objects
# Vectors

x <- 1 + 1  # The "<-" symbol assigns the expression on the right to the object named on the left. The object will appear in the "Environment" panel in the upper-right window
y <- 3 + 8
z <- 11
xy <- "a"

# Operations on Objects

x * y * z
sqrt(x)
log(y)
pi * xy

# Vectors with Multiple Observations

x0 <- c(1, 2, 15, 22, 1)
y <- c(3, 8, 9, "geology")
y2 <- c(45, 3, geology)

x0 + y  # What will happen here?

z <- c("geology", "is", "great")
z <- c("geology is great")

# Object Names

x <- "It is good if an object has a name that allows us to say what data it contains"
object_names_should_not_be_too_long_because_it_is_difficult_to_perform_operations_on_them_later <- 1
object_names_cannot_contain_special_characters_or_spaces <- "but their content can!"
10cannot_start_with_a_number  # Object names cannot start with a number
ItIsGoodToAdoptANamingConventionAndNotMix_STYLE <- 12

# File Names
# File names should also indicate their content, e.g., we try to avoid saving files as "code.csv" or "xyzq.R".
# We also avoid diacritical marks, special characters, and spaces.
# It’s also useful to add a number at the beginning of the name if there is a fixed order for analysis.

# Using Functions for Vectors

x_norm <- seq(from = -4, to = 4, length.out = 100)
x_norm  # What is the result of this?

?seq  # Help on the seq function
x_norm <- seq(-4, 4, length.out = 100)  # What will happen if we don't provide the argument 'length.out'?

y_norm <- dnorm(x_norm)

plot(x_norm, y_norm, type = "l")

# Task: Create an atomic vector with any name, containing a series of numbers in the range from -100 to 100, with a step of 5 (tip: see help for the seq() function).

# Task: Create a vector with 10 letter elements. Use the sample() function to randomly select one.

# Filtering Data

letters  # The letters vector contains lowercase letters of the alphabet

letters[4]  # Retrieves the 4th letter: "d"
letters["d"]  # returns NA because indexing by name isn't supported
letters[letters == "d"]  # Filters and returns the letter "d"
my_favorite_letters <- c("k", "z")
letters[letters %in% my_favorite_letters]  # Filters and returns only the favorite letters "k" and "z"

numbers <- 1:9  # A vector of numbers from 1 to 9

numbers[3]  # Retrieves the 3rd number: 3
numbers[numbers > 3]  # Filters and returns numbers greater than 3
numbers[numbers/2 == 2]  # Filters and returns numbers where dividing by 2 gives 2

c(letters, numbers)  # Combines letters and numbers into a single vector
