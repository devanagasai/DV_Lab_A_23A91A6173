# Load Air Passengers data sets 
data(AirPassengers)

#verify the Dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

# Convert the dataset to dataframe 
ap_df <- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

# Data frame with years and months seperately
ap_df_months <-data.frame(
  year = floor(time(AirPassengers)),
  months = cycle(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

# Basic Plot 
plot(AirPassengers)

# Plot with Title, Axis labels and color
plot(AirPassengers,
     type = 'l',
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = "red"
)

# Changing the line Width and Points co
plot(AirPassengers,
     type = 'l',
     lwd = 1.5,
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = "red"
)
points(AirPassengers,
       type = 'o',
       pch = 16,
       col = "blue")

grid()



#Using  GGPLOT2 Library 
# imporing the library ggplot2
library(ggplot2)

# A Basic Grid with x & y axis
ggplot(ap_df,
       aes(x=year, y=passengers))+
  geom_line(color = 'lightgreen', linewidth = 0.5)+
  labs(
    title = 'Trends Analysis of Air Passengers',
    subtitle = 'From 1949-1960',
    caption = 'Using Built-in Air Passengers Dataset',
    x = 'Months',
    y = 'No. of Passengers')+
  geom_point(color = 'red', size=0.5)+
  geom_smooth(se=FALSE, color = 'orange')+
  theme_minimal()+
  theme(
    plot.title = element_text(face = "bold", size = 14 ),
    plot.subtitle = element_text(size = 10)
  )