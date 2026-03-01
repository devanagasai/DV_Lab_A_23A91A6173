data(iris)
str(iris)
View(iris)
class(iris)
?iris
boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length,
        main="Box Plot for Sepal Length",
        ylab="Sepal_length",
        col='skyblue')