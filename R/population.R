#' Title
#'
#' @param map
#' @param plan
#' @param as_gt
#'
#' @return
#' @export
#'
#' @examples
rict_population <- function(map, plan, as_gt = TRUE) {



  map$District <- plan
  tgt_pop <- round(sum(map$pop) / length(unique(plan)))

  df <- map |>
    tibble::as_tibble() |>
    dplyr::group_by(.data$District) |>
    dplyr::summarize(
      Population = sum(.data$pop),
      deviation = .data$Population - tgt_pop,
      pct_deviation = .data$deviation / tgt_pop,
      .groups = 'drop'
    )
  if (as_gt) {
    df |>
      gt::gt() |>
      gt::fmt_number(columns = c('Population', 'deviation'), decimals = 0) |>
      gt::fmt_percent(columns = 'pct_deviation', decimals = 1) |>
      gt::tab_spanner(label = 'Deviation', columns = c('deviation', 'pct_deviation')) |>
      gt::cols_label(
        deviation = 'People',
        pct_deviation = '%'
      )
  } else {
    df
  }
}

