data("iris")
head(iris, 6)
summary(iris)
class(iris)  
isS4(iris)   
typeof(iris)  
#S3 Example
iris_s3 <- list(Sepal.Length = iris$Sepal.Length, Species = iris$Species)
class(iris_s3) <- "iris_data"

#Defining a custom print method for the S3 object
print.iris_data <- function(obj) {
  cat("Species:", obj$Species[1], "\nAverage Sepal Length:", mean(obj$Sepal.Length), "\n")
}

#Testing the S3 print method
iris_s3
#S4 Example
setClass("flower",
         slots = list(Sepal.Length = "numeric", Species = "character"))

#Creating an S4 object from the iris data
iris_s4 <- new("flower", Sepal.Length = iris$Sepal.Length[1:6], Species = as.character(iris$Species[1:6]))

#Displaying the S4 object
iris_s4
