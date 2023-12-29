format_compactness <- function(x) {
  rplc <- c(
    'comp_bc' = 'Boyce-Clark',
    'comp_box_reock' = 'Box Reock',
    'comp_ch' = 'Convex Hull',
    'comp_edges_rem' = 'Edges Removed',
    'comp_fh' = 'Fryer-Holden',
    'comp_frac_kept' = 'Fraction Kept',
    'comp_log_st' = 'Log Spanning Trees',
    'comp_lw' = 'Length Width',
    'comp_polsby' = 'Polsby-Popper',
    'comp_reock' = 'Reock',
    'comp_schwartz' = 'Schwartzberg',
    'comp_skew' = 'Skew',
    'comp_x_sym' = 'X Symmetry',
    'comp_y_sym' = 'Y Symmetry'
  )

  for (i in seq_along(rplc)) {
    x <- stringr::str_replace(x, pattern = names(rplc)[i], replacement = rplc[i])
  }
  x
}

format_demog_string <- function(x) {
  rplc <- c(
    'pop' = 'Pop.',
    'vap' = 'VAP',
    'white' = 'White',
    'black' = 'Black',
    'hisp' = 'Hispanic',
    'aian' = 'Native',
    'asian' = 'Asian',
    'nhpi' = 'NH/PI',
    'other' = 'Other',
    'two' = 'Two+'
  )

  for (i in seq_along(rplc)) {
    x <- stringr::str_replace(x, pattern = names(rplc)[i], replacement = rplc[i])
  }
  x
}

format_election_names <- function(x) {
  rplc <- c(
    'pre' = 'Pres',
    'uss' = 'US Sen',
    'gov' = 'Gov',
    'atg' = 'Att Gen',
    'sos' = 'SoS'
  )

  for (i in seq_along(rplc)) {
    x <- stringr::str_replace(x, pattern = names(rplc)[i], replacement = rplc[i])
  }
  x
}

