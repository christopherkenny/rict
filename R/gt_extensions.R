#' Extract data from a `gt`
#'
#' @param tab A `gt` table with class `gt::gt_tbl`
#'
#' @return A [dplyr::tibble]
#' @export
#'
#' @examples
#' rict(wv) |> gt_get_data()
gt_get_data <- function(tab) {
  tab[['_data']]
}

#' Hide List Columns in `gt`
#'
#' @param tab A `gt` table with class `gt::gt_tbl`
#'
#' @return A [gt::gt]
#' @export
#'
#' @examples
#' wv |>
#'   gt::gt() |>
#'   gt_hide_lists()
gt_hide_lists <- function(tab) {
  to_hide <- vapply(gt_get_data(tab), is.list, FUN.VALUE = NA)
  gt::cols_hide(tab, names(Filter(function(x) x, to_hide)))
}
