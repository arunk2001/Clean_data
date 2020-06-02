##Program to clean a set of untidy raw data



## Merging the tables "Train" and "Test"
source("Mergeit.R")
df1 <- Mergeit()

## Variables that have mean and sd
source("mean_sd.R")
df2 <- mean_sd(df1)

##Adding the variable "Activity"
source("activity.R")
df3 <- activity(df2)

## Renaming the variable names 
source("rename_var.R")
df4 <- rename_var(df3)

## Creating "Subjects" to the data frame
source("subject.R")
df5 <- subject(df4)

## The cleaned data
source("cleaned.R")
df6 <- cleaned(df5)

write.table(df6, file = "cleaned.txt", row.names = FALSE)
