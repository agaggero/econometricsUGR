# econometricsUGR

Companion data package for the open **Econometrics I** textbook at the
University of Granada (UGR).

## Status

`v0.1.0` — first release, published 2026-05-20. Ships three datasets only; no exported functions yet. Source: [agaggero/econometricsUGR](https://github.com/agaggero/econometricsUGR).

## Installation

```r
# install.packages("remotes")
remotes::install_github("agaggero/econometricsUGR")
```

## Datasets

| Name                | Dim       | Description                                                         | Used in    |
|---------------------|-----------|---------------------------------------------------------------------|------------|
| `notas_anteriores`  | 41 x 3    | Attendance (%) and final grade (0-10) for 41 UGR students.          | Chapter 2  |
| `het_data`          | 30 x 3    | Household income and consumption, classic heteroskedasticity setup. | Chapter 7 / Tutorial 8 |
| `autocorr_demo`     | 120 x 3   | Simulated trending series with AR(1) errors (rho = 0.7).            | Chapter 8  |

## Usage

```r
library(econometricsUGR)

data(notas_anteriores)
head(notas_anteriores)
plot(nota ~ asistencia, data = notas_anteriores)

data(het_data)
plot(consumption ~ income, data = het_data)

data(autocorr_demo)
plot(autocorr_demo$time, autocorr_demo$sales, type = "l")
```

## License

Datasets and documentation are released under **CC BY 4.0**. See
`LICENSE.md`.

## Citation

If you use these data in teaching or research, please cite:

> Gaggero, A. (2025). *Econometrics I* (open textbook). University of
> Granada. Data package: `econometricsUGR` v0.1.0.
