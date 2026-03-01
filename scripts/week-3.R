# Load the dataset
data(iris)

#Inspect The Data
?iris
head(iris,3)
str(iris)
class(iris)

#Very Basic Chart
# COunt of each species
# To see the data in the coloumn species
iris$Species
View(iris)
# Ploiris # Plotting a barc chart
barplot(
  table(iris$Species)
)

# Labeled bar chart
barplot(
  table(iris$Species),
  main = "Count of iris Species",
  xlab = "Species",
  ylab = "Number of Items",
  col = 'steelblue'
)
# adds Title ,axis labels, and color

# Bar chart from aggregated Data
# Using Mean sepal Length per Species
mean_sepal <- tapply(iris$Sepal.Length,iris$Species,mean)
mean_sepal

barplot(
  mean_sepal,
  main="Average sepal length by species",
  xlab="species",
  ylab="Mean Sepal Length"
)

#Grouped Bar chart