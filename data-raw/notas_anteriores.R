# data-raw/notas_anteriores.R
# Run with: Rscript data-raw/notas_anteriores.R   (from package root)
# Or interactively: source("data-raw/notas_anteriores.R")
notas_anteriores <- data.frame(
  id = 1:41,
  asistencia = c(38.89, 94.44, 94.44, 33.33, 83.33, 0, 0, 66.67, 88.89,
                 66.67, 27.78, 83.33, 0, 61.11, 0, 22.22, 0, 0, 72.22,
                 88.89, 88.89, 11.11, 5.56, 33.33, 16.67, 0, 11.11,
                 33.33, 100, 38.89, 5.56, 72.22, 44.44, 0, 55.56, 33.33,
                 0, 66.67, 5.56, 88.89, 88.89),
  nota = c(3.45, 5.5, 6, 3.7, 7, 2.55, 5, 2.1, 5.8, 1.9, 5.1, 5,
           2, 3.5, 2, 5.15, 0.35, 1.45, 5, 4.5, 7.8, 5.2, 3.8, 6,
           1.55, 1, 4.1, 5.7, 6.5, 4.2, 0.8, 6.5, 5.8, 0, 5.1,
           0.95, 1.4, 5.6, 1.7, 6.5, 6)
)
stopifnot(nrow(notas_anteriores) == 41)
if (!dir.exists("data")) dir.create("data")
save(notas_anteriores, file = "data/notas_anteriores.rda", compress = "xz")
