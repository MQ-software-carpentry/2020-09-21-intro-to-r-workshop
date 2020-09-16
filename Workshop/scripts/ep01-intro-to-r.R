#    ___       _               _          ____  
#   |_ _|_ __ | |_ _ __ ___   | |_ ___   |  _ \ 
#    | || '_ \| __| '__/ _ \  | __/ _ \  | |_) |
#    | || | | | |_| | | (_) | | || (_) | |  _ < 
#   |___|_| |_|\__|_|  \___/   \__\___/  |_| \_\
# 
# Derived from: https://datacarpentry.org/R-genomics/

#
# Topic: Basic Calculations and using Objects
# Presented by: Belinda Fabian

# R can do sums ...
3 + 5
12 / 7

# other operators
#
# - * / ** ^ ( )

# 
# Excercises
#

# What does: 11 + 1 / 6  evaluate to ?

# Solution:


# Calculate 10 plus 2 all divided by 3 and then squared

# Solution:




# Storing values
a <- 3              # assign the number 3 to OBJECT (variable) called "a"
b <- 5              # assign 5 to b

a                   # so what's the value of OBJECT "a"
b                   # ... and what's b

a + b               # we can add them together just like numbers

# --------
# Exercise
# --------
#
# What happens if we change a and then re-add a and b? [Hint: Try it now]
#
# Does it work if you just change a in the script and then add a and b? [Hint: Try it]
#
# Did you still get the same answer after you changed a? 
# If so, why do you think that might be?
#
# We can also assign the result of a + b to a new variable, c. 
# How would you do this?
#
# Solution:



# Logical operators
#
# == != < > >= <= !
1 < 124

#
# Sensible object names are sensible ...
#
date_of_birth <- 7
z <- 19.5
THEMOL <- 42
camelCaseIsGenerallyNotRecommended <- "Unless you follow Google's Style guide"
names_that_are_unreasonably_long_are_not_a_good_idea <- "correct"
nouns_are_good <- TRUE
TRUE <- 17
ekljre2jklwef023ijlefj93jkl23rj90f32k <- 1

# 
# Exercise
# 
#
# Assign the name of this workshop to a object with a good name.
#
# Solution: [Hint:       <- "Introduction to R"]

# Assign the name of video conferencing tool we are using to an object
#
# Solution: [Hint:      <- "Zoom"]


# Which of these are valid object names: [Hint: Try them out]
#
#  min_height
#  max.height
#  _age
#  .mass
#  MaxLength
#  min-length
#  2widths
#  celsius2kelvin

#
# Topic: Displaying results
#

weight_lb <- 55    # doesn't print anything
(weight_lb <- 55)  # but putting parenthesis () around and expression makes it display
weight_lb          # and so does typing the name of the object

# There are 2 and a bit pounds in a kilogram 
2.20462 * weight_lb

weight_lb <- 57.5
2.20462 * weight_lb

weight_kg <- 2.20462 * weight_lb
weight_kg

# 
# Exercise
# 
# 
# What are the values after each statement in the following?
# 
# mass <- 47.5            # mass is: 
# age  <- 122             # age is:
# mass <- mass * 2.0      # mass is:
# age  <- age - 20        # age is:
# mass_index <- mass/age  # mass_index is: 
#
# How do we do we know if our answers are correct ? 
# [Hint: <highlight> [ALT][ENTER]

#
# Topic: Comments
#

# Comments (like this one) are usually helpful

     # they can also be indented

# They should be supportive (not redundant e.g. "this is a comment")

# 
# Exercise
# 
#
# Add explanatory comments to the following lines of code

ft <- 3
in <- ft * 12
cms <- in * 2.54
m = cms / 100

#
# Topic: Functions and Arguments
#
sqrt(2)
sqrt(a)
abs(-23.3)
round(3.14159)
pi

# Getting help about particular functions 
?round
args(round)

round(3.14159, digits = 2)
round(digits = 2, x = 3.14159)

#
# Exercise
#
# what does the function called log10() do ?  Can you test it ?
#
# Answer:



#
# Topic: Vectors and Data Types
# Presented by: Richard Miller

# Combine some values in a vector
glengths <- c(4.6, 3000, 50000)
glengths

species <- c("ecoli", "human", "corn")
species

length(glengths)
length(species)

5 * glengths

double_lengths <- glengths + glengths
double_lengths

class(glengths)
class(species)

str(glengths)
str(species)

lengths <- c(glengths, 90)        # adding at the end
lengths <- c(30, glengths)        # adding at the start
lengths

# note all the elements have to be the same type
length_species <- c(4.5, "ecoli")
length_species

# This automatic conversion is called 'coercion' or 'casting' ..

# and there are other types as well ...
sqrt_of_minus_one <- 1i
true_or_false_value <- TRUE
decimal_number = 54.0
whole_number = -54L


class(sqrt_of_minus_one)
class(true_or_false_value)
class(whole_number)
class(decimal_number)

# --------
# Exercise
# --------
#
# We’ve seen that vectors can be of type character, 
# numeric (or double), integer, and logical. 
#
# But what happens if we try to mix these types in a single vector?
#
# eg:
#
#   thing <- c("some characters", 3.141, 100, TRUE)
#   thing
#   class(thing)
#
# What will happen in each of these examples?
#
#   num_char <- c(1, 2, 3, "a")
#   num_logical <- c(1, 2, 3, TRUE)
#   char_logical <- c("a", "b", "c", TRUE)
#   tricky <- c(1, 2, 3, "4")
#
# [Hint: use class() to check the data type of your objects]
#
# Can you explain why you think it happens?

# --------
# Exercise
# --------
# How many values in combined_logical are "TRUE" (ie character 4 characters)
# in the following example:
#   
#   num_logical <- c(1, 2, 3, TRUE)
#   char_logical <- c("a", "b", "c", TRUE)
#   combined_logical <- c(num_logical, char_logical)


#
# Topic: Subsetting vectors
# Presented by: Evan Matthews

animals <- c("mouse", "rat", "dog", "cat")
animals[2]
animals[c(3, 2)]

more_animals <- animals[c(1, 2, 3, 2, 1, 4)]
more_animals

# Conditional subsetting
weight_g <- c(21,   34,    39,   54,   55)
weight_g[   c(TRUE, FALSE, TRUE, TRUE, FALSE)]

weight_g > 50
weight_g[weight_g > 50]

weight_g[weight_g < 30 | weight_g > 50]

weight_g[weight_g >= 30 & weight_g == 21]

animals <- c("mouse", "rat", "dog", "cat")
animals[animals == "cat" | animals == "rat"] # returns both rat and cat

animals %in% c("rat", "cat", "dog", "duck", "goat")
animals[animals %in% c("rat", "cat", "dog", "duck", "goat")]

# Challenge
#
# Can you explain  why 
#
#  "four" > "five" 
#
# returns TRUE?
#
# Answer:


# Topic: Missing data (NA - Not Available)

heights <- c(2, 4, 4, NA, 6)
mean(heights)
max(heights)
mean(heights, na.rm = TRUE)
max(heights, na.rm = TRUE)

heights[!is.na(heights)]
na.omit(heights)
heights[complete.cases(heights)]

#
# Exercise (extended)
#
#
# Using this vector of heights in inches, create a new vector 
# with the NAs removed.
# 
#   heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
#
# Solution

# Use the function median() to calculate the median of the heights vector.
#
# Solution

# Use R to figure out how many people in the set are taller than 67 inches.
#
# [Hint: R has a builtin function called length() that tells you 
# how many values are in a vector
