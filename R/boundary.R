#' Display boundary information in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param seam `r template_var_seam()`
#' @param adj_col `r template_var_adj_col()`
#' @param as_gt `r template_var_as_gt()`
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
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
  shp <- shp |>
    dplyr::group_by(dplyr::across(dplyr::all_of(c(!!adj_col, 'District'))))

  if (!as_gt) {
    shp
  } else {
    shp |>
      gt::gt()
  }
}
