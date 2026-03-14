# Load & Understand the iris Dataset
data(iris)
str(iris)
View(iris)

# Basic Scatter Plot: Sepal Length vs Sepal Width
plot(iris$Sepal.Length, iris$Sepal.Width)

# Labeled Scatter Plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Sepal Width",
  xlab = "Sepal Length (cm)",
  ylab = "Sepal Width (cm)",
  col = "blue",
  pch = 16
)

# Colored Scatter Plot by Species
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Sepal Dimensions by Species"
)

legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:3,
  pch = 16
)

# Multivariate Scatter Plot (Color + Size)
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  cex = iris$Petal.Length / max(iris$Petal.Length),
  main = "Multivariate Scatter Plot (Color + Size)"
)

# Scatter Plot Matrix (Base R)
pairs(
  iris[, 1:4],
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Scatter Plot Matrix of Iris Dataset"
)

# Using ggplot2
library(ggplot2)

# Basic Scatter Plot
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()

# Colored Scatter by Species
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 2) +
  theme_minimal()

# Multivariate Scatter Plot
ggplot(
  iris,
  aes(
    x = Sepal.Length,
    y = Sepal.Width,
    color = Species,
    size = Petal.Length
  )
) +
  geom_point(alpha = 0.7) +
  theme_minimal()

# Faceted Scatter Plot
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(color = "steelblue") +
  facet_wrap(~Species) +
  theme_minimal()

# Scatter Plot Matrix using GGally
library(GGally)

ggpairs(
  iris,
  columns = 1:4,
  aes(color = Species, alpha = 0.6)
)


