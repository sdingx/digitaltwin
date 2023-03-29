library(devtools)
library(roxygen2)

# package.skeleton("dummypackage")

my.Rpackage <- as.package("dummypackage")
rm(list = c("add_two_vectors",
            "generate_random_matrix", "generate_random_vector",
            "matrix_multiplication", "paste_matrices"))
load_all(my.Rpackage)
document(my.Rpackage)