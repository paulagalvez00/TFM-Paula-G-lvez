# TFM-Propuesta de suavizaciación espacial combinando la dependencia espacial con otros criterios
En el presente documento se recopila el código empleado para el tratamiento previo de los datos y los análisis realizados en la parte práctica. De forma adicional, se presenta el código utilizado para la parte de resultados.

# Datos
Los datos empleados para la ejecución de los modelos bayesianos no se encuentra disponibles en el presente repositorio, debido a que su uso está destinado únicamente a la realización del trabajo de fin de máster mostrado.

# Versión de R, WinBUGS y paquetes empleados
Los casos prácticos se han desarrollado utilizando el software RStudio (versión de R 4.3.2). Se emplea la última versión de WinBUGS 1.4.3.

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
