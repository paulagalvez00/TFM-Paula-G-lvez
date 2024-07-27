
pkgs <- c(
  "sp",
  "spdep",
 "lattice",
  "latticeExtra",
  "viridis",
  "gridExtra",
  "RColorBrewer",
  "readxl",
  "sf",
  "ggthemes",
  "R2WinBUGS",
  "ggplot2",
  "xtable",
  "abind",
  "kableExtra"
)



invisible(
  sapply(
    pkgs,
      function(x) {
        if (!x %in% installed.packages()[, 1])
          install.packages(x, repos = c(getOption("repos"), "https://mc-stan.org/r-packages/"))
          suppressPackageStartupMessages(require(x, character.only = TRUE))
      }
  )
)

rm(pkgs)


