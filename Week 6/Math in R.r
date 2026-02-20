# Blog Post: https://masons-programming-journal.blogspot.com/2026/02/math-in-r.html
# Build matrices
a <- matrix(c(2,0,1,3), ncol = 2)
b <- matrix(c(5,2,4,-1), ncol = 2)
print(a)
print(b)
# Addition and Subtraction of the matrices
matrix.sum <- a + b
print(matrix.sum)
matrix.sub <- a - b
print(matrix.sub)

# Building matrices using diag()
m.4 <- diag(c(4,1,2,3))
print(m.4)

# Creating 3 repeating matrice with 5 col
m.5<- diag(3, 5)
print(m.5)

# Modifying cols to match example given
# [,1] [,2] [,3] [,4] [,5]
# [1,]    3    1    1    1    1
# [2,]    2    3    0    0    0
# [3,]    2    0    3    0    0
# [4,]    2    0    0    3    0
# [5,]    2    0    0    0    3
# Changing first row to be 1
m.5[1, -1] <- 1
print(m.5)

# Changing first col to be 2
m.5[-1, 1] <- 2
print(m.5)

