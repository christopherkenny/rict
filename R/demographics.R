#' Display demographic data in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param normalize Logical. Should columns be normalized to percentages? Default: `TRUE`.
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_demographics(map = wv, plan = wv$cd_2020)
rict_demographics <- function(map, plan, normalize = TRUE, as_gt = TRUE) {
  df <- dplyr::left_join(
    tally_pop(map, plan, normalize = normalize),
    tally_vap(map, plan, normalize = normalize),
    by = 'District'
  )

  if (as_gt) {
    df |>
      gt::gt() |>
      gt::fmt_number(columns = dplyr::any_of(c('pop', 'vap')), decimals = 0) |>
      gt::fmt_percent(columns = dplyr::starts_with(c('pop_', 'vap_')), decimals = 1) |>
      gt::cols_label_with(
        columns = dplyr::starts_with(c('pop_', 'vap_')),
        fn = function(x) format_demog_string(stringr::word(x, 2, sep = '_'))
      ) |>
      gt::cols_label(
        pop = 'Pop.',
        vap = 'VAP'
      ) |>
      gt::tab_spanner(label = 'Total Population', columns = dplyr::starts_with(c('pop'))) |>
      gt::tab_spanner(label = 'Voting Age Population', columns = dplyr::starts_with(c('vap')))
  } else {
    df
  }
}

tally_pop <- function(map, plan, pop_cols = dplyr::starts_with('pop_'), pop = 'pop',
                      normalize = FALSE) {
  pop_cols <- map |>
    sf::st_drop_geometry() |>
    dplyr::as_tibble() |>
    dplyr::select({{ pop_cols }}) |>
    names()
  map <- map |>
    sf::st_drop_geometry() |>
    dplyr::as_tibble() |>
    dplyr::mutate(District = plan) |>
    dplyr::group_by(.data$District) |>
    dplyr::summarize(
      dplyr::across(c(dplyr::all_of(.env$pop), dplyr::all_of(pop_cols)), sum),
      .groups = 'drop'
    )

  if (normalize) {
    .pop <- map[[pop]]
    map <- map |>
      dplyr::mutate(
        dplyr::across(dplyr::all_of(pop_cols), .fns = function(x) x / .pop)
      )
  }

  map
}

tally_vap <- function(map, plan, vap_cols = dplyr::starts_with('vap_'), vap = 'vap',
                      normalize = FALSE) {
  vap_cols <- map |>
    sf::st_drop_geometry() |>
    tibble::as_tibble() |>
    dplyr::select({{ vap_cols }}) |>
    names()
  tally_pop(map, plan, pop_cols = dplyr::all_of(vap_cols), pop = vap, normalize = normalize)
}
