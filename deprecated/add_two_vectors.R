

#' Add Two Vectors
#'
#' This function takes two input vectors and returns their element-wise sum. The two input vectors
#' must have the same length.
#'
#' @param x A numeric vector
#' @param y A numeric vector
#' @return A numeric vector containing the element-wise sum of x and y
#' @export
#' 
add_two_vectors <-
  function(x, y) {
    if (length(x) != length(y)) {
      stop("Vectors must have the same length.")
    }
    return(x + y)
  }
