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
