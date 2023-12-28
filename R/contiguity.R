rict_contiguity <- function(map, plan, as_gt = TRUE) {

  map$District <- plan
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
