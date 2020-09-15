#    ___       _               _          ____  
#   |_ _|_ __ | |_ _ __ ___   | |_ ___   |  _ \ 
#    | || '_ \| __| '__/ _ \  | __/ _ \  | |_) |
#    | || | | | |_| | | (_) | | || (_) | |  _ < 
#   |___|_| |_|\__|_|  \___/   \__\___/  |_| \_\
# 
# Derived from: https://datacarpentry.org/R-genomics/

#
# Topic: Basic Calculations and using Objects
#

# R can do sums ...
3 + 5
12 / 7

# other operators
#
# - * / ** ^ ( )

# 
# Excercises
#
# Calculate 10 plus 2 all divided by 3 and then squared
#
# Solution:


# What does: 11 + 1 / 6  evaluate to ?

# Solution:


# Try the equations in the file "images/equations.png"

# Solution:




# Storing values
a <- 3              # assign the number 3 to OBJECT (variable) called "a"
b <- 5              # assign 5 to b

a                   # so what's the value of OBJECT "a"
b                   # .. and what's b

a + b               # we can add them together

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



#
# Sensible object names are sensible ...
#
date_of_birth <- 7
z <- 19.5
THEMOL <- 42
camelCaseIsGenerallyNotRecommended <- "Unless you follow Google's Style guide"
some <- 123
thing <- 20
some-thing
names_that_are_unreasonably_long_are_not_a_good_idea <- TRUE
nouns_are_good <- TRUE
TRUE <- 17
ekljre2jklwef023ijlefj93jkl23rj90f32k <- 1

# --------
# Exercise
# --------
#
# Assign the code of this unit to a object with a good name.
#
# Solution: [Hint:       <- "CBMS836"]

# Assign the name of this room to an object
#
# Solution: [Hint:      <- "14SCO130"]


# Which of these are valid object names:
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
(weight_lb <- 55)  # but putting parenthesis around the call prints the value of `genome_size_mb`
weight_lb          # and so does typing the name of the object

# There a 2 and a bit pounds in a kilogram 
2.20462 * weight_lb

weight_lb <- 57.5
2.20462 * weight_lb

weight_kg <- 2.20462 * weight_lb
weight_kg <- 100



# --------
# Exercise
# --------
# 
# What are the values after each statement in the following?
# 
# mass <- 47.5            # mass?
# age  <- 122             # age?
# mass <- mass * 2.0      # mass?
# age  <- age - 20        # age?
# mass_index <- mass/age  # mass_index?
#
# How do we do we know if our answers are correct ? 
# [Hint: <highlight> [ALT][ENTER]

#
# Topic: Comments
#

# Comments (like this one) are usually helpful
# they can also be indented
#
# They should be supportive (not redundant)

# --------
# Exercise
# --------
#
# Comment the following lines of code

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

?round
args(round)

round(3.14159, digits = 2)
round(digits = 2, x = 3.14159)

# Exercise
#
# what does the function called log10() do ?  Can you test it ?
#
# Answer:


# --------
# Exercise
# --------
#
# We’re going to work with some genome lengths (measured in megabases).
#
# 1. Create object genome_length_mb and assign it the value 4.6 (E.cloi)
#
# Solution:


# 2. Convert this length, to the weight of the genome in picograms.
#    Use the conversion: 978Mb = 1picogram.
#
# Solution:


# 3. If the human genome is approx 3,300 megabases - approx how heavy is it.
#
# Solution:


# 4. Store the calculated weight in an object called: genome_weight_pg
#
# Solution:


# 5. If we change genome_length_mb to another value (say 2,800 - eg a mouse)
#    does the value value of genome_weight_pg get dated ?
#
# Answer:



#
# Topic: Vectors and Data Types
#

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
lengths <- c(30, glengths)        # adding at the beginning
lengths

# note all the elements have to be the same type (coercion or casting)
length_species <- c(4.5, "ecoli")
length_species

# and there are other types as well ...
sqrt_of_minus_one <- 1i
true_or_false_value <- TRUE
whole_number = -54L

class(sqrt_of_minus_one)
class(true_or_false_value)
class(whole_number)

# --------
# Exercise
# --------
#
# We’ve seen that atomic vectors can be of type character, 
# numeric (or double), integer, and logical. But what happens if we try to mix these types in a single vector?
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
# How many values in combined_logical are "TRUE" (as a character)
# in the following example:
#   
#   num_logical <- c(1, 2, 3, TRUE)
#   char_logical <- c("a", "b", "c", TRUE)
#   combined_logical <- c(num_logical, char_logical)

#
# Topic: Subsetting vectors
#
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
# Can you figure out why "four" > "five" returns TRUE?
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

# --------
# Exercise
# --------
#
# Using this vector of heights in inches, create a new vector 
# with the NAs removed.
# 
#   heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
# 
# Use the function median() to calculate the median of the heights vector.


# Use R to figure out how many people in the set are taller than 67 inches.
#
# [Hint: remove the NA's first]