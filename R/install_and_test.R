################################################################################
# Install, explore and test package for review
# 
# Author: Matt Mulvahill
################################################################################

library(devtools)

# Added cRegulome as submodule -- installing from there.

# Install as-is
devtools::install("./lib/cRegulome", build_vignettes = TRUE)

# Commit d5aae84 installs just fine

devtools::document("./lib/cRegulome")
devtools::check("./lib/cRegulome")



