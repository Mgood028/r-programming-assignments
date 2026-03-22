Blog: https://masons-programming-journal.blogspot.com/2026/03/inputoutput-string-manipulation-and.html
library(plyr)

txt_data <- read.table("Assignment 6 Dataset.txt")
txt_data

students <- read.table(file.choose(), header = TRUE, sep = ",")

students

gendered_Mean = ddply(students, "Sex", transform, Grade.Average = mean(Grade))
gendered_Mean

write.table(gendered_Mean , "Students_Gendered_Mean.csv", sep = ",", row.names = FALSE)

i_students <- subset(students, grepl("i", students$Name, ignore.case=TRUE))
i_students

write.table(i_students, "Students_With_I.csv", sep = ",", row.names = FALSE)
