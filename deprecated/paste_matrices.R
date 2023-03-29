
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
#' 
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
