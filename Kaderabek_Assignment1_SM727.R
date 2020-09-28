# Please write down the R command(s) needed after each question!

# There is a total of 22 questions.
library(faraway)

### Data types
# 1. Which command do you use to determine the type of an object?
typeof()

# 2. What is the type of vector A?
A <- c("2", "3", "4", "5", "6", "7", "8")
typeof(A) # Result should be "character"

# 3. Convert A into an integer vector
as.integer(A)

# 4. Create an integer vector B containing the numbers one through ten
B <- c(1L:10L)

# 5. Create a new vector C from B which has the type "double"
C <- as.double(B)

# 6. Change the third value of B to "3.5"
B[B==3]<-3.5

# 7. Did this affect the type of B? How?
#Yes. Type was converted to number.

### Reading in data
# Download both the Angell.dta (Stata data format) dataset and the Angell.txt dataset from this website
# https://stats.idre.ucla.edu/stata/examples/ara/applied-regression-analysis-by-fox-data-files/

# 8. Read in the .dta version and store in an object called angell_stata
library(haven)
AngeLL_strata <- read_dta("https://stats.idre.ucla.edu/stat/stata/examples/ara/angell.dta")

# 9. Read in the .txt version and store it in an object called angell_txt
angell_txt <- read.table("https://stats.idre.ucla.edu/wp-content/uploads/2016/02/angell.txt")

# 10. Drop the first five observations in the angell_txt object
angell_txt <- angell_txt[-c(1:5),]

# 11. Select columns 2 and 3 of the agell_stata object and store them in a new object called angell_small
angell_small <- AngeLL_strata[c(1:43), c(2,3)]

# R comes also with many built-in datasets. The "MASS" package, for example, comes with the "Boston" dataset
# 12. Install the "MASS" package, load the package. Then, load the Boston dataset
install.packages("MASS")
data(Boston, package = "MASS")

# 13. What is the type of the Boston object?
typeof(Boston)


#14. What is the class of the Boston object?
class(Boston)

### Basic data summarizing and description
# 15. How many of the suburbs in the Boston data set bound the Charles river?


# 16. Do any of the suburbs of Boston appear to have particularly high crime rates? Tax rates?
# Pupil-teacher ratios? Comment on the range of each variable.

# 17. What is the median pupil-teacher ratio among the towns in this data set that
# have a per capita crime rate larger than 1 ?


### Functions
# 18. Write a function that calculates the squareroot of an integer


# 19. Write a function that calculates 95% confidence intervals for a point estimate.
# The function should be called "my.CI"
# When called with "my.CI(2, 0.2)", the output of the function should read
# "The 95% CI upper bound of point estimate 2 with standard error 0.2 is 2.392. The lower bound is 1.608."
# Note: the function should take a point estimate and its standard error as arguments
# You may use the formula for 95% CI: point estimate +/- 1.96*standard error)


# 20. Write a function that converts all negative numbers in the following dataset into NA
# Use as little code as possible and try to avoid code repetition
set.seed(1002)
df <- data.frame(replicate(10, sample(c(1:10, c(-99,-98,-5)), 6, rep = TRUE)))
names(df) <- letters[1:6]
df



# 21. Use your function to convert all negative numbers in the dataset into NA without changing the class of the object



# 22. Change the function you wrote above such that it turns any negative number into NA!