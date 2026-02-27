#' Display boundary information in a table
#'
#' Identifies neighboring precincts along a district boundary and displays them
#' as adjacent pairs, with one row per pair of neighboring precincts from
#' different districts.
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param seam `r template_var_seam()`
#' @param columns columns in `map` to display in the output
#' @param adj_col `r template_var_adj_col()`
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt::gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_boundary(map = wv, plan = wv$cd_2020, seam = c(1, 2), columns = pop)
rict_boundary <- function(map, plan, seam, columns, adj_col = 'adj', as_gt = TRUE) {
  if (missing(seam)) {
    cli::cli_abort('{.arg seam} is required.')
  }

  if (!adj_col %in% names(map)) {
    map[[adj_col]] <- geomander::adjacency(map)
  }

  map <- map |>
    dplyr::mutate(
      District = plan,
      .rn = dplyr::row_number()
    )

  shp <- geomander::seam_geom(adj = map[[adj_col]], admin = 'District', seam = seam, shp = map)
  shp_df <- tibble::as_tibble(sf::st_drop_geometry(shp))
  names(shp_df)[names(shp_df) == '.rn'] <- 'rn'
  seam_rns <- shp_df[['rn']]

  # Build pairs of adjacent precincts across the district boundary
  pairs_list <- list()
  for (i in seq_len(nrow(shp_df))) {
    ri <- shp_df[i, ]
    if (ri[['District']] != seam[1]) next
    neighbors <- ri[[adj_col]][[1]] + 1L
    for (nb_rn in neighbors) {
      if (nb_rn %in% seam_rns) {
        nb_row <- shp_df[shp_df[['rn']] == nb_rn, ]
        if (nrow(nb_row) == 1 && nb_row[['District']] == seam[2]) {
          pairs_list[[length(pairs_list) + 1]] <- data.frame(rn_a = ri[['rn']], rn_b = nb_rn)
        }
      }
    }
  }

  if (length(pairs_list) == 0) {
    d1 <- seam[1]
    d2 <- seam[2]
    cli::cli_abort('No adjacent pairs found along the boundary between districts {d1} and {d2}.')
  }

  pairs <- do.call(rbind, pairs_list)

  # Select relevant columns for each side
  if (!missing(columns)) {
    cols_quo <- rlang::enquo(columns)
    side_data <- shp_df |> dplyr::select(dplyr::all_of(c('rn', 'District')), !!cols_quo)
  } else {
    side_data <- shp_df |> dplyr::select(dplyr::all_of(c('rn', 'District')))
  }
  col_names <- setdiff(names(side_data), c('rn', 'District'))

  # Create suffixed versions for each side
  side_a <- side_data
  names(side_a) <- paste0(names(side_a), '_a')

  side_b <- side_data
  names(side_b) <- paste0(names(side_b), '_b')

  # Join pairs with side data and arrange columns
  result <- pairs |>
    dplyr::left_join(side_a, by = c('rn_a' = 'rn_a')) |>
    dplyr::left_join(side_b, by = c('rn_b' = 'rn_b')) |>
    dplyr::select(
      dplyr::all_of(c(
        'District_a', 'rn_a',
        paste0(col_names, '_a'),
        paste0(col_names, '_b'),
        'rn_b', 'District_b'
      ))
    )

  if (!as_gt) {
    tibble::as_tibble(result)
  } else {
    # Build clean column labels
    labels <- list()
    labels[['District_a']] <- 'District'
    labels[['rn_a']] <- 'Precinct'
    for (cn in col_names) {
      labels[[paste0(cn, '_a')]] <- cn
      labels[[paste0(cn, '_b')]] <- cn
    }
    labels[['rn_b']] <- 'Precinct'
    labels[['District_b']] <- 'District'

    result |>
      gt::gt() |>
      gt::cols_label(.list = labels)
  }
}
