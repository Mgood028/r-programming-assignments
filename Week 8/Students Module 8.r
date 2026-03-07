library(plyr)
students <- read.table(file.choose(), header = TRUE, sep = ",")

students

gendered_Mean = ddply(students, "Sex", transform, Grade.Average = mean(Grade))

write.table(gendered_Mean , "Students_Gendered_Mean.csv", sep = ",", row.names = FALSE)

i_students <- subset(students, grepl("i", students$Name, ignore.case=T))

write.table(i_students, "Students_With_I.csv", sep = ",", row.names = FALSE)
