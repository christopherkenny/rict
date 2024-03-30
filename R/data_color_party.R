#' Color Columns with Partisan Scales
#'
#' @param tab A `gt` table with class `gt_tbl`
#' @param columns the columns to color with partisan colors
#' @param ... additional arguments passed on to `gt::data_color()`
#'
#' @return A [gt::gt]
#' @export
#'
#' @examples
#' rict(wv_plans, 'cd_2020') |>
#'   data_color_party(columns = 'e_dvs')
data_color_party <- function(tab, columns = gt::everything(), ...) {
  tab |>
    gt::data_color(
      columns = !!rlang::enquo(columns),
      palette = partisan,
      domain = c(0, 1),
      ...
    )
}

partisan <- palette::palette(c(
  "#A0442C", "#B25D4C", "#C27568", "#D18E84", "#DFA8A0",
  "#EBC2BC", "#F6DCD9", "#F9F9F9", "#DAE2F4", "#BDCCEA", "#9FB6DE",
  "#82A0D2", "#638BC6", "#3D77BB", "#0063B1"))
