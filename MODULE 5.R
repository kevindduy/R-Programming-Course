#Module # 5 Doing Math
#Instructions: Find the value of inverse of a matrix, determinant of a matrix by using the following values:
#A=matrix(1:100, nrow=10)
#B=matrix(1:1000, nrow=10) 

#Naturally, I begin with the following: 
  
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10) 
#Then I set up the following: 
#Determinant of matrix A and B
  det_A <- det(A)
#det_B <- det(B)

#Inverse of matrix A and B 
#inv_A <- solve(A)
#inv_B <- solve(B) 

#This is when I find out two things: Matrix A is singular because its determinant is equal to 0. A singular matrix is not invertible, so it cannot have an inverse. I got the error message: Error in solve.default(A) : Lapack routine dgesv: system is exactly singular: U[6,6] = 0.  Matrix B has 10 rows and 100 columns, it is not a square matrix, so I cannot find the determinant of it. To find the determinant of a matrix, the number of rows and columns in the matrix should be same. det() only works for square matrices. Also, only square matrices can have an inverse. 

#The following is the only code that worked: 
det_A <- det(A); det_A






