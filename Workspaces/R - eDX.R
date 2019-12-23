# ********************* This file "R - eDX.R" is an R script.*******************************
# This is a comment.

"
 This is also a comment. 
 Used for multi-line comment.
"

if(FALSE) {
   "This is a demo for multi-line comments and it should be put inside either a 
      single OR double quote"
}

# In R Studio, Select a code-block and press "Ctrl + Shift + C" to put '#' to apply
#  multi line comments like this. It will automatically insert # infront of every line selected.

"
‘R’ is an Interpreted, Single Threaded & Open Source programming Language for Statistical Computations,
 Data Analysis & Graphical Representation of Data.
 
 Interactivity is essential for data science. Though `R` is being interactive, we can save our work as scripts
 and be executed any moment. These saved R scripts serve as a record of analysis performed, a key feature that
 facilitates reproducible work.
 
 Why R?
   Specificity towards Data Science:
     All R libraries focus on making one thing certain - Making data analysis easier.
   R is designed especially for statistical analysis. Any new statistical method is first enabled through R Libraries.
   Members of R Community is very active and they have great knowledge in statistics as well as programming.

   Data Wrangling:
     It is a process of cleaning messy and complex datasets. This is a very important and time taking process
   in data science. R has extensive library of tools for data manipulation and wrangling.

   Data Visualization:
     It is visual representation of data in graphical form. This allows analyzing data from angles which are not clear
   in unorganized or tabulated data. R has many tools that can help in data visualization, analysis and representation.

   Machine Learning:
     At some point in data science a programmer may need to train the algorithm and bring automation and learning capabilities
   to make predictions possible. R Provides ample tools to developers to train and evaluate an algorithm and predict future events.
   The list of R packages for machine learning is really extensive.

 R by virtue of being an interpreted language, is platform independent. However R workspaces are
 machine dependent. Only R Scripts are platform independent. As a beginner it is OK to consider
 the R workspace as real. But it is recommended to consider R Scripts as real. With input data &
 R scripts we can reproduce everything in any machine.
 
 R is a case sensitive language. i.e. TRUE & True are not same.

 Anything that is stored in R is object. It could be data, functions or anything.
"

# Following is a function to clear the working environment memory completely.
rm(list=ls()) # This will remove all the previously declared/assigned objects(aka variables) from working memory.
# rm(object1,object2,object3) # This is to remove multiple objects/variables.

# Following is a function to clear the console
clr <- function() cat("\014") # Cat -> Concatenate and Print. Here '<-' is prefered as assignment operator. 
# The above can be invoked as
clr()
# Both '<-' & '=' can be used as assignment operator. However inside functions, only '=' is permitted as assignment operator.

"
   In any programming language variables are nothing but reserved memory locations to store values.
   This means when a variable is created, some space is reserved in memory. We may like to store
   information of various data types such as like character, wide character, integer, floating point,
   double floating point, Boolean etc. Based on the data type of a variable, the operating system 
   allocates memory and decides what can be stored in the reserved memory.

   In contrast to other programming languages like C and java, variables are not declared 
   as some data type in R. The variables are called as R-Objects. The datatype of R Object is called as Class. 
   There are many types/class of R-objects. The frequently used
   used ones are,
      Vectors
      Lists
      Matrices
      Arrays
      Factors
      Data Frames
The Simplest of these objects is the Vector Object and there are six types of these atomic vectors,
also termed as six classes of vectors. The other R-Objects are built upon the atomic vectors
"

# Rules for declarating Varibles/Objects
"
      1. Variables can be combination of letters, digits, period(.), underscore(_).
      2. It must start with a letter or period. If it starts with period, it cannot be
         followed by a digit.
      3. reserved words cannot be used.
      4. Examples: total, sum, .fine.with.dot, this_is_acceptable, Number5.
      5. These are wrong: tot@l, 5um, TRUE, .0ne
   

Note: Earlier versions of R used underscore(_) as assignment operator. So, the period(.) was used extensively
in variable names having multiple words.

Current versions of R support underscore as a valid identifier, but it is a good practice to use period
as word Separators.

For example, a.variable.name is preferred over a_variable_name or alternatively we could use
camel case as aVariableName.

Constants in R
   
   Numeric Constants are,
      integer: This is followed by 'L'. Ex. 5L -> typeof(5L) would be integer.
      double:  Ex. 5 -> typeof(5) would be 'double'
      complex: Ex. 5i -> typeof(5i) would be 'complex'
   
   Numeric constants preceded by 0x or 0X are interpreted as hexadecimal numbers.
      Ex. 0xff will give 255 in console
      0XF + 1 will give 16 in console
      
   Character Constants:
      They are represented using either single quotes '' or double qoutes "" as delimiters.
      #Ex. 'example' -> typeof('example') would be "character".
   
   Built-in Constants:
      Some of the built in Constants are
         #LETTERS: This means "A" "B" "C" "D" "E" "F"......X" "Y" "Z"
         #letters: This means "a" "b" "c" "d" "e"...."x" "y" "z"
         #pi : This means 3.141593
         #month.name: This means "January"   "February"  "March"..."October"   "November"  "December"
         #month.abb: This means "Jan" "Feb" "Mar"..."Oct" "Nov" "Dec"
      But it is not good do rely on these built in constants, because these values can be changed
      For example pi <- 56 would force the value of pi from 3.141593 to 56.
"

# R Operators




# Logical Vector(Object/Class/Datatype), Ex: TRUE, FALSE
aLogicalObject <- FALSE
class(aLogicalObject)

# Numeric Vector(Object/Class/Datatype), Ex: 172.3, 72, 34
aNumericObject <- 172.3
class(aNumericObject)

# Integer Vector(Object/Class/Datatype), Ex: 2L, 56L, 0L
anIntegerObject <- 56L
class(anIntegerObject)

# Complex Vector(Object/Class/Datatype), Ex: 2+7i, 5+3i
aComplexObject <- 2+3i
class(aComplexObject)

# Character Vector(Object/Class/Datatype), Ex: "a", "hello", "TRUE", "0.123"
aCharacterObject <- "Good Day" # Enclosed within Double Quotes
class(aCharacterObject)
anotherCharacterObject <- 'Another Good Day' # Enclosed with in Double Quotes
class(anotherCharacterObject)

# Raw Vector(Object/Class/Datatype)
aStringObject <- 'Hello'
aRawObject <- charToRaw(aStringObject)
class(aRawObject)
print(aRawObject) # The character 'Hello' is stored as '48 65 6c 6c 6f'
print(rawToChar(aRawObject)) # This will print the original String
is.raw(aRawObject) # Answer is TRUE
is.raw(aStringObject) # Answer is FALSE

"
 In R Programming, the basic data types are the R objects called vectors which hold the elements
 of different classes. In R the number of classes is not confined only to the above types.
 For example we can use many atomic vectors and create an array whose class will become array.
"

"
A Vector is what is called an array in all other programming languages except R. Vector is 
a basic data structure in R. It contains elements of same type. The data types can be logical,
Integer, double, character, complex or raw. Vector's type can be checked using typeof() function.

To create a vector with more than one element, the function c() should be used. The default
method combines its arguments to form a vector. All Arguments are coerced to a common type
which is the type of the returned value, and all attributes except names are removed.

"

color1 <- c("red", "green", "yellow") # This is a vector with 3 elements
color1 # It does print(color1)
class(color1) # Class of this vector would be Character.
oddNumbersVectorArray <- c(1,3,5,7,9)
class(oddNumbersVectorArray)# Class of this vector would be numeric.
mixedVectorArray <- c(2,4,6,8,"ABCD")
class(mixedVectorArray) #Class of this vector would be Character.

multiVector <- c(aRawObject, aStringObject, aComplexObject, anIntegerObject, aNumericObject, aLogicalObject)

"
 Since, a vector must have elements of same type, this function c() will try and coerce 
 elments to same type, if they're different.
 
 Coercion is from lower to higher types from logical to integer to double to character
   raw < logical < integer < double < complex < character < list
"
#Thus



"
Lists: A list is an R Object which can contain many types of elements inside it like vectors, functions and even another list.
List Size can be increased on the fly. List contents can be accessed either by index or by name
"
list1 <- list(c(1,2,3), 35.8, sin,100) # Creating a list.
list2 <- list(oddVector=c(9,7,5,3,1),func=sin, string="Hello World")
class(list1) # Class of a list would be 'list'.
list1[2] # This will show 35.8
list2$string # This will show "Hello World"

"
Matrices: A Matrix is a two dimensional rectangular data set. It can be created using a vector input to the Matrix function.
Matrix is a two dimenstional vector(fixed size, all cell types same).
"
vectorIn <- c(1,2,3,'a','b','c','x','y','x') #Create a vector
vectorIn # This will not be in matrix form, but in an array form.
matrixOut <- matrix(vectorInput, nrow = 3, ncol=3, byrow = TRUE) #Creating a Matrix
matrixOut # It does print(M)
class(matrixOut) # Class of a list would be list.

# Arrays:

#*** A Sample arithmatic - Quadratic formula
a <- 1
b <- 1
c <- -1

#Solution 1:
(-b + sqrt(b^2 - 4*a*c))/(2*a)

#Solution 2:
(-b - sqrt(b^2 - 4*a*c))/(2*a)

#Data type of an object can be found using class function.
class(clr) # here data type of clr itself is function.
class(aString) # Answer is "character". 'aString' must be defined before as a prerequiste.
class(aNumber) # Answer is "numeric". 'aNumber' must be defined before as a prerequiste.
#

"
In R, a package is a collection of R functions, data and compiled code. The location where
the packages are stored is called the library. They are stored under a directory called 'library' 
in the R environment. By default, R installs a set of packages during installation. More 
packages are added later, when they are needed for some specific purpose. When we start 
the R console, only the default packages are available by default. Other packages which 
are already installed have to be loaded explicitly to be used by the R program that is 
going to use them. To actually use the package use the command "library(package)" which 
makes that package available to you. Then just call the appropriate package functions etc.
"
# As we're changing objects in the console, we're also changing the workspace.

.libPaths() # This gives the library locations containing R Packages.

#There are several datasets that are included in R for users to pratice and test out functions. 
#Those can be viewed as
data() # This lists the available Data sets from the package datasets. This comes with R by default.

?"library" # This gives the details of "library" from R Documentation.
library() # This gives the list of intalled R Packages. This library function is used to Load/Attach as well.

#*** Installing Package.
#install.packages("Package Name") # This install the package from the CRAN webpage 'https://cran.r-project.org/web/packages/available_packages_by_name.html'
#install.packages(file_name_with_path.zip, repos = NULL, type = "source") #This installs the package manually.

"
Loading a Package:
   Before a package is used in the code, it must be loaded to the current R Environment.
   A package that is already installed but not available in the current environment must also be loaded.
"
#   library("package Name", lib.loc = "path to library") # This loads a package to the Current R library.
# New packages will go to the 'libPaths().


#Local Libraries can be appended to the default R Library.
.libPaths( c( .libPaths(), "~/userLibrary") )
# Or (and this will make the userLibrary the first place to put new packages):
.libPaths( c( "~/userLibrary" , .libPaths() ) )

# This will give two R libraries,
.libPaths()
# [1] "/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
# [2] "/Users/user_name/userLibrary"

"
Functions:
Once variables are defined, then the data analysis process can usually be described as a series of functions
applied to the data. R includes sevaral predefined functions and most of the analysis pipelines we construct 
make extensive use of these.Ex: ls(), log(8, base = 2), args(log), help("+")

Pre-built Objects:
pi, Inf
"
"
Data Types:
   The function 'class' helps us to determine the type of the object.
   
   Data Frames:
      Up to now, the variables we have defined are just one number. This is not very useful for
   storing data. The most common way of storing a dataset in R is in a data frame.
   Conceptually, we can think of a data frame as a table with rows representing observations
   and the different variables reported for each observation defining the columns. Data frames
   are particularly useful for datasets because we can combine different data types into one
   object.
   
   A large proportion of data analysis challenges starts with data stored in a data frame.
   
"

# Load a pre existing package dslabs(data science labs)
library(dslabs)

#What is dslabs?
# It is a package that contains datasets & functions that can be used for data analysis practice,
# homework and projects in data science courses and workshops.26 datasets are available for
# case studies in data visualization, statistical inference, modeling, linear regression, 
# data wrangling and machine learning.

data(murders) #It loads a 'dataset' "murders" from the package dslabs

class(murders) # datatype of murders is "data.frame"

# Examining an object:
str(murders) # This gives the structure of an object/dataframe.
head(murders) # This shows the first six lines of the dataset murders.
# The dataset "murders" has 51 observations of 5 variables. Columns are generally variables while rows are observations.
names(murders) # This shows the variable names.
ls(murders) # This shows the column names in alphabetical order

# The accessor $: - To access a particular variable represented by column
murders$state # This shows all the 51 states
murders$abb # This shows the abbreviations of all 51 states.
murders$region # This shows the region each state is classified into.
murders$population # This shows the population of each 51 states.
murders$total # This shows the murders of each 

# To view the entire dataframe object, 
murders()


