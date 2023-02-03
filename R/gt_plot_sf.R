#' Add `sf` Geometry Plots to a `gt`
#'
#' @param tab A `gt` table with class `gt_tbl`
#' @param name Name for `sf` column in `gt`
#' @param height height, in pixels, of each image. Default is 100
#' @param ... additional arguments passed on to `geom_sf()`
#'
#' @return A [gt::gt]
#' @export
#'
#' @examples
#' wv_dist <- wv %>% dplyr::group_by(cd_2020) %>% dplyr::summarize()
#' gt::gt(wv_dist) %>% gt_plot_sf()
gt_plot_sf <- function(tab, name, height = 100, ...) {

  shp <- sf::st_as_sf(gt_get_data(tab))
  if (!any(vapply(shp, function(x) inherits(x, what = 'sfc'), NA))) {
     cli::cli_abort('Data in {.arg tab} must have an {.cls sf} column.')
  }

  p <- lapply(seq_len(nrow(shp)), function(i) {
    suppressWarnings({
      shp %>%
        dplyr::slice(i) %>%
        ggplot2::ggplot() +
        ggplot2::geom_sf(...) +
        theme_map()
    })
  })

  if (missing(name)) {
    name <- 'geom'
  }

  tab %>%
    gt_hide_lists() %>%
    gt_add_column(.col = !!rlang::enquo(name), .val = NA) %>%
    gt::text_transform(locations = gt::cells_body(columns = !!rlang::enquo(name)),
                       fn = function(x) {
                         lapply(p, gt::ggplot_image, height = gt::px(height))
                       })
}
