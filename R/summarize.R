summarize_pop <- function(plans, pop = 'total_pop', pop_cols = dplyr::starts_with('pop_'),
                          drop = TRUE) {
  .pop <- rlang::eval_tidy(rlang::ensym(pop), plans)
  plans <- plans |>
    dplyr::mutate(dplyr::across(pop_cols, .fns = function(x) x / .pop))
  if (drop) {
    plans <- plans |>
      dplyr::select(-{{ pop }})
  }
  plans
}
