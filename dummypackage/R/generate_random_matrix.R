generate_random_matrix <-
function(nrows, ncols) {
  return(matrix(rnorm(nrows * ncols), nrow = nrows, ncol = ncols))
}
