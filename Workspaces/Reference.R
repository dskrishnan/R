# Anything that is stored in R is object. It could be data, functions or anything.
# Variables are also referred as objects. For example,
aNumber <- 1
aString <- "Hello World!"
# As we're changing objects in the console, we're also changing the workspace.

# A function to clear the console can be defined as
clr <- function() cat("\014")
# The above can be invoked as
clr()

# ls() command shows all the variables saved in the workspace
ls()

#Data type of an object can be found using class function.
class(clr) # here data type of clr itself is function.
class(aString) # Answer is "character". 'aString' must be defined before as a prerequiste.
class(aNUmber) # Answer is "numeric". 'aNumber' must be defined before as a prerequiste.
#
#Following is one way of doing multi line comment. 
"
In R, a package is a collection of R functions, data and compiled code. The location where
the packages are stored is called the library. If there is a particular functionality that
you require, you can download the package from the appropriate site and it will be stored 
in your library. To actually use the package use the command "library(package)" which makes
that package available to you. Then just call the appropriate package functions etc.
"

# There is another way to do multiline comment. That is usig RStudio "ctrl+shift+C"
# Select this whole comment block and press "ctrl+shift+C" in RStudio.
# It will automatically insert # infront of every line selected.

#There are several datasets thar included in R for users to pratice and test out functions. Those can be viewed as
data()

?"library" # This gives the details of "library" from R Documentation

# Load a pre existing package dslabs(data science labs)
library(dslabs)

#What is dslabs?
# It is a package that contains datasets & functions that can be used for data analysis practice,
# homework and projects in data science courses and workshops.26 datasets are available for
# case studies in data visualization, statistical inference, modeling, linear regression, 
# data wrangling and machine learning.

# Data Frames:
# Up to now, the variables we have defined are just one number. This is not very useful for 
# storing data. The most common way of storing a dataset in R is in a data frame. 
# Conceptually, we can think of a data frame as a table with rows representing observations
# and the different variables reported for each observation defining the columns. Data frames
# are particularly useful for datasets because we can combine different data types into one
# object.

data(murders) #It loads a dataset "murders" from the package dslabs

class(murders) # datatype of murders is "data.frame"




data.frame(murders) 
names(murders)
str(murders)
murders$population