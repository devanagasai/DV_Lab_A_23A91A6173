# DV Lab – Week 3(b)
# Roll No:23A91A6173

# Load dataset
data(airquality)

# Inspect data
head(airquality, 3)
str(airquality)
class(airquality)

# View dataset
View(airquality)

# Check Ozone column
summary(airquality$Ozone)

# Histogram (with NA warning possible)
hist(
  airquality$Ozone,
  main = "Distribution of Ozone Concentration",
  xlab = "Ozone (ppb)",
  col = "skyblue",
  border = "black"
)

# Remove NA values
ozone_clean <- na.omit(airquality$Ozone)

# Histogram without NA
hist(
  ozone_clean,
  main = "Ozone Concentration (Without NA)",
  xlab = "Ozone (ppb)",
  col = "lightgreen",
  border = "black"
)

# Boxplot
boxplot(
  ozone_clean,
  main = "Boxplot of Ozone Levels",
  ylab = "Ozone (ppb)",
  col = "orange"
)

# Mean ozone per month
mean_ozone_month <- tapply(
  airquality$Ozone,
  airquality$Month,
  mean,
  na.rm = TRUE
)

mean_ozone_month

# Barplot
barplot(
  mean_ozone_month,
  main = "Average Ozone per Month",
  xlab = "Month",
  ylab = "Mean Ozone (ppb)",
  col = "steelblue"
)
