#' Add a column to a `gt`
#'
#' @param tab A `gt` table with class `gt_tbl`
#' @param .col column name
#' @param .val value to add
#' @param ... additional arguments to pass to [dplyr::add_row]
#'
#' @return A [gt::gt]
#' @export
#'
#' @examples
#' rict(wv) |> gt_add_column(r, 3)
gt_add_column <- function(tab, .col, .val, ...) {
  .col <- rlang::ensym(.col)
  .val <- rlang::enquo(.val)

  tab[['_data']] <- tab[['_data']] |>
    dplyr::mutate({{ .col }} := !!.val)
  tab[['_boxhead']] <- tab[['_boxhead']] |>
    dplyr::add_row(
      var = rlang::as_name(.col), type = 'default',
      column_label = list(rlang::as_name(.col)),
      column_align = 'center',
      column_width = NULL, hidden_px = NULL, ...
    )
  tab
}

#' Extract data from a `gt`
#'
#' @param tab A `gt` table with class `gt_tbl`
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
#' @param tab A `gt` table with class `gt_tbl`
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
