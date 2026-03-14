
# DV Lab – Week-7
# Roll No:23A91A6173
# Load and understand the HairEyeColor Dataset

# Load Dataset
data(HairEyeColor)

# Check Structure
str(HairEyeColor)
View(HairEyeColor)
?HairEyeColor

# Very Basic Mosaic Plot (Base R)
mosaicplot(HairEyeColor)

# Add Titles and colors
mosaicplot(HairEyeColor, main="Mosaic Plot: Hair, Eye Color and Sex", col=TRUE)

# Two-variable Mosaic Plot
HairEye2D <- margin.table(HairEyeColor, c(1,2))
mosaicplot(HairEye2D, main="Hair vs Eye Color Mosaic Plot", col=TRUE)

# Mosaic Plot By sex
par(mfrow=c(1,2))
mosaicplot(HairEyeColor[,,"Male"], main="Male", col=TRUE)
mosaicplot(HairEyeColor[,,"Female"], main="Female", col=TRUE)
par(mfrow=c(1,1))

# Custom Colors
mosaicplot(HairEye2D, col=c("brown","black","red","yellow"),
           main="Hair vs Eye Color")

# Advanced Mosaic Plot using 'vcd'
install.packages("vcd")
library(vcd)
mosaic(HairEyeColor, shade=TRUE, legend=TRUE, main="Shaded Mosaic Plot (vcd)")

# Convert Dataset to Dataframe (for ggplot)
hair_eye_df <- as.data.frame(HairEyeColor)
head(hair_eye_df)

# GGplot alternative (Proportional Mosaic-Style plot)
library(ggplot2)
ggplot(hair_eye_df, aes(x=Hair, y=Freq, fill=Eye)) +
  geom_bar(stat="identity", position="fill") +
  facet_wrap(~Sex) +
  labs(title="Proportional Distribution of Eye Color by Hair",
       y="Proportion") +
  theme_minimal()

# Advanced Mosaic with Residual Shading
mosaic(~ Hair + Eye + Sex, data=hair_eye_df, shade=TRUE, legend=TRUE)
