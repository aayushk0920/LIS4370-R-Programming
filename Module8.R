# LIS 4370 R Programming - Module 8 Assignment

# Load necessary packages
library(plyr)

# Step 1: Import text file into R
x <- read.table("D:\\Aayush School\\Fall 2024\\LIS 4370\\Assignment 6 Dataset.txt", header = TRUE, sep = ",")

# Step 2: Use ddply from the plyr package to generate mean of Age and Grade variables split by Sex variable saved to Grade.Average
y <- ddply(x, "Sex", transform, Grade.Average = mean(Grade))

# Step 3: Create a new csv file containing new variable Grade.Average called Sorted.Average
write.table(y, "Sorted.Average.csv", sep = ",", row.names = FALSE)

# Step 4: Filter the names in the list that contain the letter (i)
newx <- subset(x, grepl("[iI]", x$Name))

# Save result to new file called DataSubset
write.table(newx, "DataSubset.csv", sep = ",", row.names = FALSE)
