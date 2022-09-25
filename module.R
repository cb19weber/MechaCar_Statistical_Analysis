demo_table <- read.csv(file='demo.csv', check.names=F, stringsAsFactors = F)
library(jsonlite)
demo_table2 <- fromJSON(txt = 'demo.json')
demo_table[3,"Year"]
demo_table[3,3]
demo_table$Vehicle_Class[2]
filter_table <- demo_table2[demo_table2$price > 10000,]
fitler_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status)
num_rows <- 1:nrow(demo_table)
sample_rows <- sample(num_rows, 3)
demo_table[sample_rows,]
demo_table[sample(1:nrow(demo_table), 3),]
library(tidyverse)
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE)
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep') #create summary table with multiple columns
demo_table3 <- read.csv('demo2.csv',check.names = F, stringsAsFactors = F)
long_table <- gather(demo_table3,key = "Metric", value = "Score", buying_price:popularity)
wide_table <- long_table %>% spread(key = "Metric",value = "Score")
all.eqaul()
plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
plt + geom_bar() #plot a bar plot
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) #import dataset into ggplot2
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + #plot a bar plot
theme(axis.text.x=element_text(angle = 45, hjust = 1)) #rotate the x-axist label 45 degress
