install.packages("tidyverse")
library(tidyverse)
install.packages("readxl")
library(readxl)
install.packages("pangaear")
library(pangaear)

# Saving data ----

dir.create("data")

my_test_data <- tibble(letters = letters,
                       numbers1 = sample(1:100, length(letters)),
                       numbers2 = rnorm(length(letters))
)

write_csv(my_test_data, "data/my_test_data.csv")
write_delim(my_test_data, "data/my_test_data.txt")

my_test_data2 <- list(letters = letters,
                      numbers1 = 1:10,
                      numbers2 = rnorm(1000))

write_csv(my_test_data2, "data/my_test_data2.csv")

write_rds(my_test_data2, "data/my_test_data2.rds")

# Loading data from the working folder ----
my_test_data <- read_csv("data/my_test_data.csv")
my_test_data <- read_delim("data/my_test_data.txt")

my_test_data2 <- read_rds("data/my_test_data2.rds")

# Task: Create a data frame outside of R and save it as a CSV file with decimal numbers and a comma as the decimal separator. Then load the created file into R. Use ChatGPT to find out which function to use 
# Create a data frame outside of R and save it in .xlsx format, then load it into R.

# Loading data from databases using Pangea ----
vignette("pangaear")

pang_search <- pg_search(query = 'grain size', bbox = c(-124.2, 41.8, -116.8, 46.1))
pang_raw <- pg_data(doi = pang_search$doi[3])
pang_output <- pang_raw[[1]]$data

View(pang_output)

plot(pang_output$`Depth sed [m]`, pang_output$`Size [µm]`, type = "b")

## Task: Choose columns from the pang_output data frame (`Depth sed [m]` and `Size [µm]`), rename them to "Depth" and "Diameter", create a plot showing the change of diameter with depth. Then save the data frame in the "data" folder, naming the file after the first author and the publication year.
