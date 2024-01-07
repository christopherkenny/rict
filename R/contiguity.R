#' Display contiguity info in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param adj_col Name of column in `map` that contains adjacency information.
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_contiguity(map = wv, plan = wv$cd_2020)
rict_contiguity <- function(map, plan, adj_col = 'adj', as_gt = TRUE) {

  if (!adj_col %in% names(map)) {
    map[[adj_col]] <- geomander::adjacency(map)
  }

  df <- geomander::check_contiguity(adj = map$adj, group = plan) |>
    dplyr::group_by(District = .data$group) |>
    dplyr::summarise(Pieces = max(.data$component)) |>
    dplyr::mutate(
      District = as.integer(.data$District)
    )

  if (as_gt) {
    df |>
      gt::gt()
  } else {
    df
  }
}
