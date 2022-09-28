# Deliverable 1: Linear Regression to Predict MPG
# 3. Use the library() function to load the dplyr package
library(dplyr)
# 4. Import and read in the MechaCar_mpg.csv file as a dataframe
vehicle_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
# 5. Perform linear regression using the lm() function, passing in all six variables, and add the df from Step 4
# evaluate correlation relationships
mpg_matrix <- as.matrix(vehicle_mpg)
cor(mpg_matrix)

# view linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=vehicle_mpg)

# store model and built ggplot
mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=vehicle_mpg)

# 6. Determine the p-value and the r-squared value for the linear regression model
summary(mpg_model)
