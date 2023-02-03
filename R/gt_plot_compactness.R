#' Add Compactness Metric Plots to a `gt`
#'
#' @param tab A `gt` table with class `gt_tbl`
#' @param shp An `sf` object
#' @param plan A numeric vector with one entry for each precinct in `shp`.
#' @param measures A character vector indicating which measures to plot. Uses `guess_comp()` if not supplied.
#' @param height height, in pixels, of each image. Default is 200.
#' @param ... additional arguments. Not currently passed on.
#'
#' @return A [gt::gt]
#' @export
#'
#' @examples
#' rict(wv_plans, 'cd_2020') %>%
#'   gt_plot_compactness(wv, wv$cd_2020)
gt_plot_compactness <- function(tab, shp, plan, measures = guess_comp(tab),
                                height = 200, ...) {

  if (missing(plan) & inherits(shp, 'redist_map')) {
    plan <- redist::get_existing(shp)
  }

  if (length(measures) == 0) {
    cli::cli_abort('At least one measure must be specified for {.arg measures}.')
  }

  cps <- lapply(seq_along(measures), function(i) {
    plot_compactness(shp, plan, measures[i])
  })
  noms <- gg_comp_names(measures)

  # for (i in seq_along(cps)) {
  lapply(seq_along(cps), function(i) {
    cp <- cps[[i]]
    nom <- noms[i]
    tab <<- tab %>% # TODO bad assignment, but good for mwe
      gt_add_column(.col = !!nom, .val = NA) %>%
      gt::text_transform(locations = gt::cells_body(columns = !!rlang::enquo(nom)),
                         fn = function(x) {
                           lapply(cp, gt::ggplot_image, height = gt::px(height))
                         })
  })
  #}

  tab
}



guess_comp <- function(x) {
  if (is.null(x)) return(NULL)

  noms <- names(gt_get_data(x))

  maybe <- list(
    `Polsby Popper` = grep(pattern = 'polsby', x = noms),
    `Schwartzberg` = grep(pattern = 'schwartz', x = noms),
    `Reock` = grep(pattern = 'reock', x = noms),
    `Convex Hull` = sort(unique(c(
      grep(pattern = 'convex_hull', x = noms),
      grep(pattern = '_ch', x = noms),
      grep(pattern = 'chull', x = noms)
    ))),
    `Length Width` = sort(unique(c(
      grep(pattern = 'length_width', x = noms),
      grep(pattern = '_lw', x = noms)
    ))),
    `Skew` = grep(pattern = 'skew', x = noms),
    `Box Reock` = grep(pattern = 'box_reock', x = noms)
  )

  Filter(function(x) length(x) != 0, maybe) %>% names()
}

gg_comp_names <- function(measures) {
  dplyr::case_when(
    measures == 'Polsby Popper' ~ 'gg_polsby',
    measures == 'Schwartzberg' ~ 'gg_schwartz',
    measures == 'Reock' ~ 'gg_reock',
    measures == 'Convex Hull' ~ 'gg_chull',
    measures == 'Length Width' ~ 'gg_length_width',
    measures == 'Skew' ~ 'gg_skew',
    measures == 'Box Reock' ~ 'gg_box_reock',
    TRUE ~ NA_character_
  )
}
