#   _____ _             _   _                        _ _   _       _____        _        
#  / ____| |           | | (_)                      (_| | | |     |  __ \      | |       
# | (___ | |_ __ _ _ __| |_ _ _ __   __ _  __      ___| |_| |__   | |  | | __ _| |_ __ _ 
#  \___ \| __/ _` | '__| __| | '_ \ / _` | \ \ /\ / | | __| '_ \  | |  | |/ _` | __/ _` |
#  ____) | || (_| | |  | |_| | | | | (_| |  \ V  V /| | |_| | | | | |__| | (_| | || (_| |
# |_____/ \__\__,_|_|   \__|_|_| |_|\__, |   \_/\_/ |_|\__|_| |_| |_____/ \__,_|\__\__,_|
#                                    __/ |                                               
#                                   |___/                                                
#
# Based on: https://datacarpentry.org/R-ecology-lesson/02-starting-with-data.html



# Lets download some data (make sure the data folder exists)
download.file(url = "https://ndownloader.figshare.com/files/2292169",
              destfile = "data_raw/portal_data_joined.csv")

# now we will read this "csv" into an R object called "surveys"
surveys <- read.csv("data_raw/portal_data_joined.csv")

# and take a look at it

surveys
head(surveys)
View(surveys)

# BTW, we assumed our data was comma separated, however this might not
# always be the case. So we may been to tell read.csv more about our file.

help("read.csv")

# So what kind of an R object is "surveys" ?

class(surveys)

# ok - so what are dataframes ?
str(surveys)
dim(surveys)
nrow(surveys)
ncol(surveys)

head(surveys, 2)
tail(surveys, 2)

names(surveys)
rownames(surveys)

summary(surveys)

# --------
# Exercise
# --------
#
# What is the class of the object surveys?
#
# Answer:


# How many rows and how many columns are in this survey ?
#
# Answer:

# What's the average weight of survey animals
#
#
# Answer:

# Are there more Birds than Rodents ?
#
#
# Answer:


# 
# Topic: Subetting
#

# first element in the first column of the data frame (as a vector)
surveys[1, 1]

# first element in the 6th column (as a vector)
surveys[3, 6]

# first column of the data frame (as a vector)
surveys[, 1] 

# first column of the data frame (as a data frame)
surveys[1]

# first row (as a data frame)
surveys[1,]

# first three elements in the 7th column (as a vector)
surveys[1:3, 7]

# the 3rd row of the data frame (as a data.frame)
surveys[3, ]

# equivalent to head(metadata)
surveys[1:6, ]
surveys[, 1:6]

# looking at the 1:6 more closely
1:6
c(1,2,3,4,5,6)
surveys[c(1,2,3,4,5,6),]

# we also use other objects to specify the range
rows <- 6
surveys[1:rows,]

#
# Challange: Using slicing, see if you can produce the same result as:
#
#   tail(surveys)
#
# i.e., print just last 6 rows of survey
#
# Solution:
surveys[(nrow(surveys)-1):nrow(surveys), ]




# We can omit (leave out) columns using '-'
surveys[-1]
surveys[-c(1,2)]
surveys[-(1:3)]


# column "names" can be used in place of the column numbers
surveys["month"]
surveys[c("month", "day", "year")]
surveys[, "month"]


#
# Topic: Factor (for categorial data)
#

gender <- factor(c("male", "female", "female", "male"))
gender

class(gender)

levels(gender)
nlevels(gender)

# factors have an order
temperature <- factor(c("hot", "cold", "hot", "warm"))
temperature[1]
temperature[2]
temperature

levels(temperature)
temperature <- factor(c("hot", "cold", "hot", "warm"), levels = c("cold", "warm", "hot"))
temperature
levels(temperature)
levels(temperature)[2] <- 'cool'

# Converting factors

as.numeric(temperature)
as.character(temperature)

# can be tricky if the levels are  numbers
year <- factor(c(1990, 1983, 1977, 1998, 1990))
year
as.numeric(year)
as.character(year)
as.numeric(as.character(year))

# so does our survey data have factors
str(survey)



# Topic:  Dealing with Dates

# There's a whole library for dealing with dates ..
library("lubridate")


my_date <- ymd("2015-01-01")
str(my_date)

# R can concatenated things together using paste()
paste("2015", "1", "1", sep = "-")

# sep indicates the character to use to separate each component
my_date <- ymd(paste("2015", "1", "1", sep = "-")) 
str(my_date)

# it also works for entire columns
paste(surveys$year, surveys$month, surveys$day, sep = "-")

ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))

# let's save the dates in a new column of our dataframesurveys$date 
surveys$date <- ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))
surveys$date <- ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))

# and in summary 
summary(surveys$date)

missing_dates <- surveys[is.na(surveys$date), c("year", "month", "day")]

head(missing_dates)

