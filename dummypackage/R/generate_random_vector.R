generate_random_vector <-
function(length) {
  if (!is.numeric(length) | length <= 0 | length %% 1 != 0) {
    stop("Length must be a positive integer.")
  }
  return(runif(length))
}
