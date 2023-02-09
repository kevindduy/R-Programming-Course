#Module 7 
#Following the steps shown in the instructions but with the dataset air quality:

data(“airquality”)
head(airquality, 6)

#Determine if a generic function can be assigned to the airquality dataset:

str(airquality)# Yes! It is a data.frame class so it may be used by functions.

#It is not possible to directly assign S3 or S4 to the airquality dataset as the airquality dataset is a data frame, not an object created by S3 or S4.
#1)You can tell by calling for the class() or str().2)You can use typeof()? 3)(Source: Google) A generic function runs other functions, depending on the class of the arguments passed to it. A generic function uses setGeneric() and its methods use setMethod().4)S3 is simple where objects are instances of classes and have a character string. S4 is more specific and has more control, where objects are instances of classes and stores as an environment. S3 is simple, and flexible but not as capable as S4.





#S3 Trial
# Define a generic function 
addition <- function(x, y) UseMethod("addition")

# Define an S3 method 
addition.default <- function(x, y) x + y

# define x and y and test function
x <- 2
y <- 2
addition(x, y)


#S4
setClass("Person", representation(name = "character", gender = "character"))

Person <- function(name, gender) {new("Person", name = name, gender = gender)}

person1 <- Person("Kevin", "Male"); person1
person2 <- Person("Arwen", "Female"); person2


