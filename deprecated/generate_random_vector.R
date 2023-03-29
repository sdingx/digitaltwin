#' Generate a Random Vector
#'
#' This function generates a random vector of a specified length using the runif() function.
#'
#' @param length The length of the desired vector, which should be a positive integer.
#' @return A vector of length 'length', containing random values between 0 and 1.
#' @export
#' 
generate_random_vector <-
  function(length) {
    if (!is.numeric(length) | length <= 0 | length %% 1 != 0) {
      stop("Length must be a positive integer.")
    }
    return(runif(length))
  }
