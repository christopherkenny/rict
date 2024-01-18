#' Display boundary information in a table
#'
#' @param map `r template_var_map()`
#' @param plan `r template_var_plan()`
#' @param adj_col `r template_var_adj_col()`
#' @param as_gt `r template_var_as_gt()`
#' @inheritParams geomander::seam_geom
#'
#' @return a `gt_tbl` if `as_gt = TRUE`, otherwise a [tibble::tibble]
#' @export
#'
#' @examples
#' rict_boundary(map = wv, plan = wv$cd_2020, admin = 'cd_2020', seam = c(1, 2))
rict_boundary <- function(map, plan, admin, seam, adj_col = 'adj', as_gt = TRUE) {

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

  shp <- geomander::seam_geom(adj = map[[adj_col]], admin = admin, seam = seam, shp = map)


  shp <- shp |>
    dplyr::group_by(dplyr::across(dplyr::all_of(c(!!adj_col, 'District'))))

  if (!as_gt) {
    shp
  } else {
    shp |>
      gt::gt()
  }
}
