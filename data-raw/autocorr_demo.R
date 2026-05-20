# data-raw/autocorr_demo.R
# Run with: Rscript data-raw/autocorr_demo.R   (from package root)
set.seed(2026)
n            <- 120
time         <- 1:n
advertising  <- 5 + 0.5 * time + rnorm(n, 0, 3)
rho_true     <- 0.7
u            <- numeric(n); u[1] <- rnorm(1, 0, 2)
for (t in 2:n) u[t] <- rho_true * u[t-1] + rnorm(1, 0, 2)
sales        <- 10 + 0.8 * advertising + 0.3 * time + u
autocorr_demo <- data.frame(time = time,
                            advertising = advertising,
                            sales = sales)
if (!dir.exists("data")) dir.create("data")
save(autocorr_demo, file = "data/autocorr_demo.rda", compress = "xz")
