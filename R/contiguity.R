#' Display contiguity info in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param adj An adjacency list (zero-indexed). If provided, used directly
#'   instead of looking up `adj_col` in `map`.
#' @param adj_col `r template_var_adj_col()`
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_contiguity(map = wv, plan = wv$cd_2020)
rict_contiguity <- function(map, plan, adj = NULL, adj_col = 'adj', as_gt = TRUE) {
  if (!is.null(adj)) {
    adj_list <- adj
  } else if (adj_col %in% names(map)) {
    adj_list <- map[[adj_col]]
  } else {
    adj_list <- geomander::adjacency(map)
  }

  has_na <- any(is.na(plan))
  if (has_na) {
    na_val <- max(plan, na.rm = TRUE) + 1L
    plan[is.na(plan)] <- na_val
  }

  df <- geomander::check_contiguity(adj = adj_list, group = plan) |>
    dplyr::group_by(District = .data$group) |>
    dplyr::summarise(Pieces = max(.data$component)) |>
    dplyr::mutate(
      District = as.integer(.data$District)
    )

  if (has_na) {
    df <- df |>
      dplyr::mutate(
        District = ifelse(.data$District == na_val, NA_integer_, .data$District)
      )
  }

  if (as_gt) {
    df |>
      gt::gt()
  } else {
    df
  }
}
