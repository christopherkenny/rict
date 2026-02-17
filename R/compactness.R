#' Display compactness measures in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param measures a list of named functions to score compactness
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_compactness(map = wv, plan = wv$cd_2020)
rict_compactness <- function(
  map, plan, measures = list(
    'comp_polsby' = redistmetrics::comp_polsby,
    'comp_schwartz' = redistmetrics::comp_schwartz,
    'comp_reock' = redistmetrics::comp_reock,
    'comp_ch' = redistmetrics::comp_ch
  ),
  as_gt = TRUE
) {
  meas <- lapply(measures, function(x) {
    x(plan, map)
  }) |>
    stats::setNames(names(measures)) |>
    tibble::as_tibble()

  out <- dplyr::bind_cols(
    tibble::tibble(
      District = sort(unique(plan))
    ),
    meas
  )

  if (as_gt) {
    out |>
      gt::gt() |>
      gt::fmt_percent(columns = dplyr::starts_with('comp_'), decimals = 1) |>
      gt::cols_label_with(
        columns = dplyr::starts_with('comp_'),
        fn = function(x) format_compactness(x)
      )
  } else {
    out
  }
}
