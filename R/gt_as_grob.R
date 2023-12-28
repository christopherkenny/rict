# #' Convert `gt` to grob
# #'
# #' @param tab A `gt` table with class `gt_tbl`
# #'
# #' @return A grob
# #' @export
# #'
# #' @examples
# #' rict(wv) |> gt_as_grob()
# gt_as_grob <- function(tab) {
#   tf <- tempfile(fileext = '.png')
#   gt::gtsave(data = tab, filename = tf)
#
#   out <- grid::rasterGrob(png::readPNG(tf))
#
#   file.remove(tf)
#
#   out
# }
