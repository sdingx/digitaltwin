library(devtools)
library(roxygen2)

# package.skeleton("dummypackage")
# devtools::create("dummypackage")
# unlink("/Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library/dummypackage/R/dummypackage.rdb")
load_all(".")
devtools::document(".")
devtools::install(".")