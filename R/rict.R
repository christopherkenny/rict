#' Title
#'
#' @param x redist_map or redist_plans
#' @param plan integer vector or draw name
#' @param ... other arguments
#'
#' @return A [gt::gt]
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
    dplyr::select(-.data$draw) |>
    gt::gt()
}

#' @method rict redist_map
#' @export
rict.redist_map <- function(x, plan = redist::get_existing(x), ...) {
  x |>
    dplyr::mutate(district = dplyr::all_of(.env$plan)) |>
    redist::merge_by(.data$district, by_existing = FALSE, collapse_chr = FALSE) |>
    dplyr::as_tibble() |>
    dplyr::select(-.data$adj) |># dplyr::glimpse()
    gt::gt()
}
