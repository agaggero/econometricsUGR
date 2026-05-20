#' Income and consumption data for the heteroskedasticity tutorial
#'
#' Cross-sectional data used in Chapter 7 (Heteroskedasticity) of the
#' textbook and in Tutorial 8 of the Practicas. The classic
#' income-consumption setup where the variance of consumption tends to
#' grow with income, providing a textbook illustration of
#' heteroskedasticity and the diagnostic tests (Breusch-Pagan, White)
#' covered in the book.
#'
#' @format A data frame with 30 rows and 3 variables:
#' \describe{
#'   \item{id}{integer, observation identifier (1-30).}
#'   \item{consumption}{household consumption (monetary units).}
#'   \item{income}{household income (monetary units).}
#' }
#' @source Tutorial 8 of the Econometria I Practicas, UGR Faculty of
#'   Economics and Business Studies.
"het_data"
