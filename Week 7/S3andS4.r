BLOG: https://masons-programming-journal.blogspot.com/2026/03/object-oriented-coding-in-r.html
# First Step: Load Data
T.df <- as.data.frame(Titanic)

# Second Step: Generic Functions
head(T.df)
str(T.df)
Freq.Mean <-mean(T.df$Freq)
Freq.Mean

# Third Step: S3 & S4
# What is T.df?
isS4(T.df)
typeof(T.df)

# First S3 Example
T.s3a<- head(T.df, 3)
class(T.s3a) <- "TEST"
print(T.s3a)
typeof(T.s3a)
print(T.s3a)

# Second S3 Example
T.s3b <- list(data = head(T.df, 1))
class(T.s3b) <- "Class One"

# First S4 Example
setClass("S4 One", slots = list(data = "data.frame"))
T.s4a <- new("S4 One", data = head(T.df, 1))
print(T.s4a)
isS4(T.s4a)
typeof(T.s4a)

# Second S4 Example
setClass("S4 Two", slots = list(freqs = "numeric"))
T.s4b <- new("S4 Two", freqs = head(T.df$Freq, 1))
print(T.s4b)
isS4(T.s4b)
typeof(T.s4b)

