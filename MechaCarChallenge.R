# Deliverable 1: Linear Regression to Predict MPG
# 3. Use the library() function to load the dplyr package
library(dplyr)
library(tidyverse)
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

# Deliverable 2: Visualizations for the Trip Analysis
# 2. Import and read in the Suspension_Coil.csv
production_df <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# 3. Create a summary dataframe to analyze production variances
total_summary <- production_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# 4. Create a summary dataframe to analyze production variances, grouping by manufacturing lot
lot_summary <- production_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Bonus. Create visualizations to display manufacturing outliers
plt <- ggplot(production_df,aes(x=Manufacturing_Lot, y=PSI))
plt + geom_boxplot(aes(colour = Manufacturing_Lot), outlier.color = "red") + theme(axis.text.x = element_text(hjust=1))
