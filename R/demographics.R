# tallyiers ----
tally_pop <- function(map, plan, pop_cols = dplyr::starts_with('pop_'), pop = 'pop',
                      normalize = FALSE) {

  pop_cols <- map |>
    tibble::as_tibble() |>
    dplyr::select(pop_cols) |>
    names()
  map <- map |>
    tibble::as_tibble() |>
    dplyr::mutate(District = plan) |>
    dplyr::group_by(.data$District) |>
    dplyr::summarize(
      dplyr::across(c(dplyr::all_of(.env$pop), dplyr::all_of(pop_cols)), sum),
      .groups = 'drop'
    )

  if (normalize) {
    .pop <-rlang::eval_tidy(rlang::ensym(pop), map)
    map <- map |>
      dplyr::mutate(
        dplyr::across(dplyr::all_of(pop_cols), .fns = function(x) x / !!rlang::ensym(pop))
      )
  }

  map
}
tally_vap <- function(map, plan, vap_cols = dplyr::starts_with('vap_'), vap = 'vap',
                      normalize = FALSE) {
  tally_pop(map, plan, pop_cols = vap_cols, pop = vap, normalize = normalize)
}
