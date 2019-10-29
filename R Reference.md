# [R Programming Reference](https://rafalab.github.io/dsbook/)

Source: [Study References](https://stats.stackexchange.com/questions/138/free-resources-for-learning-r)

## What is R?
* It is not like C or Java. It is developed by statisticians as an interactive environment for data analytics.
* Interactivity is essential for data science. Though `R` is being interactive, we can save our work as scripts and executed any moment.
* These scripts serve as a record of analysis performed, a key feature that facilitates reproducible work.
* R is Single Threaded Programming Language, so it is not good for performance Intensive tasks.
* R can do both Data analysis & Machine learning**(ML)** algorithms. 
* For **ML**

## R Specifics
* `R` - the language can be installed from [R Cran Project Page](https://cran.r-project.org).
* [R Studio](https://rstudio.com/products/rstudio/download/) is an **IDE** need to be installed on top of the [R](https://cran.r-project.org).
* `R` Scripts should have extension `.R`
* A conventional `R` script file name is `my-first-script.R`. A good convention is to use a descriptive name, with lower case letters, no spaces, only hyphens to separate words, and then followed by the suffix .R.
* To define a variable, we may use the assignment symbol “<-“. Regular "=" is recommended against.
* There are two ways to see the value stored in a variable: (1) type the variable into the console and hit Return, or (2) type print(“variable name”) and hit Return.
* Objects are stuff that is stored in R.  They can be variables, functions, etc.
* The ls() function shows the names of the objects saved in your workspace.

### Code: solving the equation x2+x−1=0

**Assigning values to variables:**  
>> a <- 1  
b <- 1  
c <- -1  

** Solving the quadratic equation**  
>>(-b + sqrt(b^2 - 4*a*c) ) / ( 2*a )  
(-b - sqrt(b^2 - 4*a*c) ) / ( 2*a )

# First R Program - Hello World!.
* Open RStudio & Create a new `R` Script
*
