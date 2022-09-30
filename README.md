# MechaCar_Statistical_Analysis
DU Data Bootcamp: Module 15 - R
## Overview of Project
R is very commonly used in data science for statistical modeling and hypothesis testing. More recent updates have extended R's capacity to include generation of machine learning algorithms and other advanced models. Our goal this week is to become comfortable with RStudio and the R language, and then implement some of the basics into a statistical analysis project.

### Purpose of Project
The specific purpose of the challenge is the ascertain production issues for the MechaCar, a fictional prototype of AutosRUs. We will seek to investigate which variables correlate with miles per gallon (mpg) in order to make accurate predictions. We will examine summary statistics regarding the suspension coils, run some tests to determine if certain manufacturing lots are statistically different from standard production ranges, and design a study to compare the MechaCar performance against other vehicles.

## Linear Regression to Predict MPG
<div>
  <p>Using the entire mileage dataset to evaluate variate relationships and create a linear model yielded vehicle length and ground clearance as the most significant factors <i>in the dataset</i> that impacted mileage. The relationships indicate that there is at least some correlative relationship between the variables and the desired outcome of designing MechaCar to achieve greater mileage (the slope of the line representing the relationship is not zero, and we can reject the null hypothesis).</p>
  <img src="https://github.com/cb19weber/MechaCar_Statistical_Analysis/blob/main/images/model_coefficients.png" align="right">
  <p>Is the slope of the model considered to be zero? Why or why not?
  What does the model ultimately tell us? Both vehicle length and ground clearance demonstrate a positive correlation to overall mileage, indicating that a longer vehicle design and at least average ground clearance may pay dividends at the gas pump.</p>
</div>
Does this model predict mpg of MechaCar prototypes efeectively? Why or why not?

## Summary Statistics on Suspension Coils
<div>
  <p>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. <img src="https://github.com/cb19weber/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png" align="left">The variance of the total summary as shown on the left is just over 62.29 PSI. This indicates acceptable manufacturing consistency in the coils on the whole.</p>
  <p><img src="https://github.com/cb19weber/MechaCar_Statistical_Analysis/blob/main/images/lot_box_plot.png" align="center"></p>
  <p>Looking deeper into the manufacturing variances and understanding what is happening in each manufacturing lot (or batch) we can see above and to the right that while the overall variance is well 
  <img src="https://github.com/cb19weber/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png" align="right"> within standards of production KPIs, the first two production lots demonstrated significantly greater quality in terms of low variance. The third lot actually falls outside the range of standardized production measures and had greater number of outliers with much greater magnitude. Further examination of the manufacturing inputs should be examined to determine root cause.</p>
</div>

## T-Tests on Suspension Coils
<div>
  <p>In performing a statistical analysis of the whole population in the manufacturing record, the expected mean based on a normal significance level suggests that we cannot reject our null hypothesis.
  <img src="https://github.com/cb19weber/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png" align="right">
  Our p-value, as displayed in the figure on the right, is 1, which is much higher than our significance level of 0.05</p>
</div>

## Results
