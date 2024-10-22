# Setting up your matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

det(A)
det(B)
solve(A)
solve(B)

# Transpose A and B given matrix and/or data.frame x. t returns the 
# transpose of x
t(A)
t(B)

# Create two vectors (a and b)
a <- c(1:10)
b <- c(1:100)

# Multiply matrices by vectors
# Note: an important rule when multiplying matrices, make sure both
# matrices have the same number of dimensions (same number of columns).

result_1 <- A %*% a
result_2 <- B %*% b

# Reassign vectors a and b to equal the number of rows of the column
# for the corresponding matrix

a <- 1:nrow(A)
b <- 1:nrow(B)

# Multiply the matrix by a matrix
# Using the above matrices (A and B)
# I will multiply them together and assign the result to final_result

final_result <- A %*% B

# Inverse of a matrix
S <- matrix(2:5, nrow = 2)

# check det() <--- determinant
det(S)
