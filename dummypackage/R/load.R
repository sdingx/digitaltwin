library(stats)

#' Generate a Random Vector
#'
#' This function generates a random vector of a specified length using the runif() function.
#'
#' @param length The length of the desired vector, which should be a positive integer.
#' @return A vector of length 'length', containing random values between 0 and 1.
#' @importFrom stats runif
#' @export

generate_random_vector <-
function(length) {
if (!is.numeric(length) | length <= 0 | length %% 1 != 0) {
stop("Length must be a positive integer.")
}
return(runif(length))
}

#' Add Two Vectors
#'
#' This function takes two input vectors and returns their element-wise sum. The two input vectors
#' must have the same length.
#'
#' @param x A numeric vector
#' @param y A numeric vector
#' @return A numeric vector containing the element-wise sum of x and y
#' @export

add_two_vectors <-
function(x, y) {
if (length(x) != length(y)) {
stop("Vectors must have the same length.")
}
return(x + y)
}

#' Generate a Random Matrix
#'
#' This function generates a random matrix of the specified dimensions, with each element
#' being drawn from a standard normal distribution.
#'
#' @param nrows The number of rows in the matrix, which should be a positive integer
#' @param ncols The number of columns in the matrix, which should be a positive integer
#' @return A matrix of dimensions nrows x ncols, with each element drawn from a standard normal distribution.
#' @importFrom stats rnorm
#' @export

generate_random_matrix <-
function(nrows, ncols) {
return(matrix(rnorm(nrows * ncols), nrow = nrows, ncol = ncols))
}

#' Concatenate Matrices or Vectors
#'
#' This function concatenates two matrices or vectors horizontally. If both inputs are vectors,
#' they are concatenated vertically to create a 2-column matrix. If both inputs are matrices,
#' they are concatenated horizontally using cbind(). If the inputs are not both vectors or both matrices,
#' the function will stop execution and return an error message.
#'
#' @param x A vector or matrix
#' @param y A vector or matrix
#' @return A matrix, created by horizontally concatenating x and y
#' @export

paste_matrices <-
function(x, y) {
if (is.vector(x) & is.vector(y)) {
if (length(x) != length(y)) {
stop("Vectors must have the same length.")
}
return(matrix(c(x, y), nrow=length(x), ncol=2))
} else if (is.matrix(x) & is.matrix(y)) {
if (nrow(x) != nrow(y)) {
stop("Matrices must have the same number of rows.")
}
return(cbind(x, y))
} else {
stop("Both arguments must be either vectors or matrices.")
}
}

#' Perform Matrix Multiplication
#'
#' This function performs matrix multiplication of two matrices. The two input matrices
#' must have compatible dimensions for multiplication.
#'
#' @param a A matrix
#' @param b A matrix
#' @return The result of matrix multiplication of a and b
#' @export
matrix_multiplication <-
  function(a, b) {
    if (is.matrix(a) & is.matrix(b)) {
      if (ncol(a) != nrow(b)) {
        stop("Number of cols in the first matrix must be equal to the number of rows in the second matrix.")
      }
      return(a %*% b)
    } else {
      stop("Both arguments must be matrices.")
    }
    
  }

