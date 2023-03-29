

#' Generate a Random Matrix
#'
#' This function generates a random matrix of the specified dimensions, with each element
#' being drawn from a standard normal distribution.
#'
#' @param nrows The number of rows in the matrix, which should be a positive integer
#' @param ncols The number of columns in the matrix, which should be a positive integer
#' @return A matrix of dimensions nrows x ncols, with each element drawn from a standard normal distribution.
#' @export
#' 
generate_random_matrix <-
  function(nrows, ncols) {
    return(matrix(rnorm(nrows * ncols), nrow = nrows, ncol = ncols))
  }
