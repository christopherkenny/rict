wv <- alarmdata::alarm_50state_map('wv')
pl <- alarmdata::alarm_50state_plans('wv')

set.seed(censable::match_fips('WV'))
dr <- pl |>
  subset_sampled() |>
  as_tibble() |>
  group_by(chain) |>
  slice_sample(n = 3) |>
  ungroup() |>
  pull(draw) |>
  as.double() |>
  sort()

pl_sub <- redist::get_plans_matrix(redist::filter(pl, draw %in% dr))
colnames(pl_sub) <- paste0('sample_', 1:12)

wv <- dplyr::bind_cols(wv, dplyr::as_tibble(pl_sub))
class(wv) <- c(class(wv)[1], 'sf', class(wv)[-1])
usethis::use_data(wv, overwrite = TRUE, compress = 'gzip')

wv_plans <- redist::filter(pl, draw == 'cd_2020' | draw %in% dr)
usethis::use_data(wv_plans, overwrite = TRUE, compress = 'gzip')
