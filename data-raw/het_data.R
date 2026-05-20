# data-raw/het_data.R
# Run with: Rscript data-raw/het_data.R   (from package root)
library(readxl)
het_path <- "G:/My Drive/UGR/GRADO/Asignaturas/ECONOMETRIA I/ENGLISH/Practicas/2025/Tutorial 8/het_data.xlsx"
het_data <- read_excel(het_path)
het_data <- as.data.frame(het_data)
if (!dir.exists("data")) dir.create("data")
save(het_data, file = "data/het_data.rda", compress = "xz")
