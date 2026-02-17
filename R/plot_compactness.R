#' Create Plots for Common Compactness Metrics
#'
#' @param shp An `sf` object
#' @param plan A numeric vector with one entry for each precinct in `shp`.
#' @param measure A character indicating which measure to plot. Default is `'Polsby Popper'`.
#' @param fill_color hex or color name to fill the shape. A second entry can be provided
#' to fill the background.
#'
#' @return list of `ggplot2` plots
#' @export
#'
#' @examples
#' plot_compactness(wv, wv$cd_2020)
plot_compactness <- function(shp, plan,
                             measure = c(
                               'Polsby Popper', 'Schwartzberg',
                               'Reock', 'Convex Hull', 'Length Width',
                               'Skew', 'Box Reock'
                             ),
                             fill_color = 'deeppink') {
  measure <- match.arg(arg = measure)
  if (!length(fill_color) %in% 1:2) {
    cli::cli_abort('{.arg fill_color} must be length 1 or 2.')
  } else {
    if (length(fill_color) == 1) {
      fill_color[2] <- NA
    }
  }

  shp <- shp |>
    dplyr::as_tibble() |>
    dplyr::select(.data$geometry) |>
    dplyr::mutate(rict_plan = plan) |>
    dplyr::group_by(.data$rict_plan) |>
    dplyr::summarise(geometry = sf::st_union(.data$geometry)) |>
    sf::st_as_sf()

  fn <- switch(measure,
    'Polsby Popper' = equal_area_pp,
    'Schwartzberg' = equal_area_sw,
    'Reock' = \(x) sf::st_as_sf(geos::geos_minimum_bounding_circle(x)),
    'Convex Hull' = \(x) sf::st_as_sf(geos::geos_convex_hull(x)),
    'Length Width' = \(x) sf::st_as_sf(geos::geos_envelope_rct(x)),
    'Skew' = circles_skew,
    'Box Reock' = \(x) sf::st_as_sf(geos::geos_minimum_rotated_rectangle(x))
  )
  comp_shp <- fn(shp) |>
    dplyr::mutate(rict_plan = shp$rict_plan)

  lapply(sort(shp$rict_plan), function(.dist) {
    shp |>
      redist::filter(.data$rict_plan == .dist) |>
      ggplot2::ggplot() +
      ggplot2::geom_sf(
        data = dplyr::filter(comp_shp, .data$rict_plan == .dist),
        fill = fill_color[2], linewidth = 1
      ) +
      ggplot2::geom_sf(fill = fill_color[1]) +
      theme_map()
  })
}


equal_area_pp <- function(shp) {
  radii <- geos::geos_length(shp) / (2 * pi)
  sf::st_as_sf(geos::geos_buffer(geos::geos_centroid(shp), radii))
}

equal_area_sw <- function(shp) {
  radii <- sqrt(geos::geos_area(shp) / pi)
  sf::st_as_sf(geos::geos_buffer(geos::geos_centroid(shp), radii))
}

circles_skew <- function(shp) {
  insc <- geos::as_geos_geometry(geos::geos_maximum_inscribed_crc(shp, 0.01))
  bnd <- geos::geos_minimum_bounding_circle(shp)
  l <- lapply(seq_len(nrow(shp)), function(i) {
    sf::st_as_sf(geos::geos_make_collection(geom = c(insc[i], bnd[i])))
  })
  do.call('rbind', args = l)
}
