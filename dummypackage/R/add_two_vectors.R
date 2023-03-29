add_two_vectors <-
function(x, y) {
  if (length(x) != length(y)) {
    stop("Vectors must have the same length.")
  }
  return(x + y)
}
