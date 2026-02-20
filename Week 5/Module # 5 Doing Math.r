Blog post: https://masons-programming-journal.blogspot.com/2026/02/matrixs.html
# Create matrices without random values
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Determinant

det(A)
det(B)

# Inverse
solve(A)  
solve(B)  

# Create a matrix with random values
C <- matrix(rnorm(100), nrow = 10)  # 10x10

# Determinant
det(C)

# Inverse
solve(C)  

