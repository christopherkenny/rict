#' Create a Summary Table from Redistricting Data
#'
#' Creates a formatted [gt::gt] table summarizing redistricting plans or maps.
#'
#' @param x A `redist_map` or `redist_plans` object.
#' @param plan For `redist_plans`: draw name or number to display.
#'   For `redist_map`: column or vector of district assignments
#'   (defaults to existing plan via [redist::get_existing()]).
#' @param ... Additional arguments passed to methods.
#'
#' @return A [gt::gt] table
#' @export
#'
#' @examples
#' data(wv_plans)
#' rict(wv)
rict <- function(x, plan, ...) {
  UseMethod('rict')
}

#' @method rict redist_plans
#' @export
rict.redist_plans <- function(x, plan, ...) {
  x |>
    redist::filter(.data$draw == plan) |>
    dplyr::select(-"draw") |>
    gt::gt()
}

#' @method rict redist_map
#' @export
rict.redist_map <- function(x, plan = redist::get_existing(x), ...) {
  x |>
    dplyr::mutate(district = .env$plan) |>
    redist::merge_by(.data$district, by_existing = FALSE, collapse_chr = FALSE) |>
    dplyr::as_tibble() |>
    dplyr::select(-"adj") |>
    gt::gt()
}
