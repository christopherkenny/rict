rict_compactness <- function(map, plan, measures = list(
  'comp_polsby' = redistmetrics::comp_polsby,
  'comp_schwartz' = redistmetrics::comp_schwartz,
  'comp_reock' = redistmetrics::comp_reock,
  'comp_ch' = redistmetrics::comp_ch),
  as_gt = TRUE) {

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
