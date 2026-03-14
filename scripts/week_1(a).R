# DV Lab – Week 1(a)
# Roll No:23A91A6173

# -------------------------------
# Load VADeaths dataset
# -------------------------------
data("VADeaths")

# Display dataset
print("VADeaths Dataset:")
print(VADeaths)

# Convert matrix to data frame
va_df <- as.data.frame(VADeaths)

# View structure
str(va_df)

# -------------------------------
# Set plotting layout (2x2)
# -------------------------------
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

# -------------------------------
# Histograms
# -------------------------------

# Rural Male
hist(va_df$`Rural Male`,
     main = "Rural Male Death Rate",
     xlab = "Death Rate",
     col = "skyblue",
     border = "black")

# Rural Female
hist(va_df$`Rural Female`,
     main = "Rural Female Death Rate",
     xlab = "Death Rate",
     col = "lightgreen",
     border = "black")

# Urban Male
hist(va_df$`Urban Male`,
     main = "Urban Male Death Rate",
     xlab = "Death Rate",
     col = "salmon",
     border = "black")

# Urban Female
hist(va_df$`Urban Female`,
     main = "Urban Female Death Rate",
     xlab = "Death Rate",
     col = "orchid",
     border = "black")

# -------------------------------
# Reset layout
# -------------------------------
par(mfrow = c(1, 1))
