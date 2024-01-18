#' Display population data by administrative unit in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param admin column names in `map` without `NA` values to calculate administrative splits for
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_component(map = wv, plan = wv$cd_2020, admin = 'county')
rict_component <- function(map, plan, admin, as_gt = TRUE) {
  map$District <- plan
  out <- map |>
    dplyr::as_tibble() |>
    dplyr::group_by(dplyr::across(dplyr::all_of(c(admin, 'District')))) |>
    dplyr::summarise(
      pop = sum(.data$pop)
    )

  if (as_gt) {
    out |>
      gt::gt()
  } else {
    out
  }
}
