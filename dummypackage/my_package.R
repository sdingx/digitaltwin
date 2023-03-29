library(devtools)
library(roxygen2)
library(usethis)
# usethis::use_build_ignore("^my_package$")
devtools::wd()

devtools::load_all(".")
# unlink("/Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library/00LOCK-dummypackage", recursive = TRUE)


devtools::document(".")
# devtools::build(".")
devtools::install(".")
