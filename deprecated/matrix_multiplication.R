
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

