
# 1. limpia el environment:
rm(list = dplyr::setdiff(ls(all = TRUE), "params"))

# 2. limpia la consola de R:
cat("\014")

# 3. cargar purrr para iterar los paquetes
library(purrr)

# 4. paquetes:
paquetes <-
  c(
    "tidyverse",
    "janitor",
    "zoo",
    "readxl",
    "glue",
    "fs",
    "openxlsx",
    "gt",
    "tictoc",
    "quarto",
    "CTT",
    "here" # NO OLVIDAR: éste último
  )

# 5. Cargar paquetes:
walk(paquetes, ~{
  library(.x, character.only = TRUE, logical.return = TRUE)
  cat("paquete:", .x, "\n")
})

# 6. ruta inicial
dr_here()

# 7 declarar rutas dinámicas
output <- here("Book")
images <- here("images")
backend <- here("backend")
